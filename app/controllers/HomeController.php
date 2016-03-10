<?php

class HomeController extends BaseController
{
	
	private $_hash = null;
	private $_tag = null;
	private $_random = null;
	private $_bodyClass = null;

	public function __construct()
	{
		$this->_hash = '#';
		$this->_tag = 'coldplay';
		$this->_random = rand(101, 10000);
		$this->_bodyClass = '';
	}

	public function getHome()
	{
		$this->_bodyClass = 'home';

		// datos de twitter
		$tweets = Twitterfeed::orderBy('tw_id', 'DESC')->take('20')->get()->toArray();
		//datos de instagram
		$dataInstagram = Funciones::getInstagramByTag($this->_tag);

		$ganadorRetosEntel		= Ganadoresretos::where('estado', '=', 'G')->get()->toArray();
		$ganadorRollingMania	= Ganadoresrollingmania::all()->toArray();
		/*$ganadorUltraFan		= Ganadoresultrafan::all()->toArray();
		$ganadorTribuna			= Ganadorestribunaentel::all()->toArray();
		$ganadores = count($ganadorRetosEntel) + count($ganadorRollingMania) + count($ganadorUltraFan) + count($ganadorTribuna);*/
		$ganadores = count($ganadorRetosEntel) + count($ganadorRollingMania);

		//return View::make('frontend.index')->with('tweets', $tweets)->with('dataInstagram', $dataInstagram)->with('rnd', $this->_random)->with('bodyClass', $this->_bodyClass)->with('ganadores', $ganadores);
		return View::make('frontend.index')->with('tweets', $tweets)->with('dataInstagram', $dataInstagram)->with('rnd', $this->_random)->with('bodyClass', $this->_bodyClass);
	}

	public function getComoGanar()
	{
		$this->_bodyClass = '';
		return View::make('frontend.como-ganar')->with('rnd', $this->_random)->with('bodyClass', $this->_bodyClass);
	}

	public function getComoGanarRollingMania()
	{
		$this->_bodyClass = 'como-ganar-rollingmania';
		return View::make('frontend.como-ganar-rollingmania')->with('rnd', $this->_random)->with('bodyClass', $this->_bodyClass);
	}

	public function getRetos()
	{
		$this->_bodyClass = 'retos';
		$fechaHoy = date('Y-m-d');
		$fechaHora = strtotime(date('Y-m-d H:i:s'));

		// validar fecha de inicio y fin de retos
		$fechaInicio = strtotime('2016-03-05 09:00:00');
		$fechaFinal = strtotime('2016-03-31 21:00:00');
		if ($fechaHora < $fechaInicio || $fechaHora > $fechaFinal) {
			return Redirect::to('/');
		}

		// validar la hora: 09:00:00 hasta 21:00:00
		$horaInicio = strtotime(date('Y-m-d 09:00:00'));
		$horaFinal = strtotime(date('Y-m-d 21:00:00'));
		if ($fechaHora > $horaInicio && $fechaHora < $horaFinal) {
			$reto = Retos::where('fecha', '=', $fechaHoy)->get()->toArray();
			$idReto = $reto[0]['idreto'];
			$alternativas = Alternativas::where('idreto', $idReto)->get()->toArray();
			return View::make('frontend.retos')->with('rnd', $this->_random)->with('bodyClass', $this->_bodyClass)->with('reto', $reto)->with('alternativas', $alternativas);
		} else {
			return View::make('frontend.retos-off')->with('rnd', $this->_random)->with('bodyClass', 'retos2');
		}
	}

	public function getGanadores()
	{
		$this->_bodyClass = 'ganadores';

		// la fecha del último sorteo
		$sorteo = Sorteo::where('estado', '=', '1')->orderBy('fechasorteo', 'desc')->take(1)->get()->toArray();
		$fechaUltimoSorteo = $sorteo[0]['fechasorteo'];

		// datos de "rolling mania"
		$datosRollingMania = array(
			'ultimos'	=> Ganadoresrollingmania::select(array('nombre', DB::raw("DATE(created_at) AS fecha")))->whereDate('created_at', '=', $fechaUltimoSorteo)->get()->toArray(),
			'todos'		=> Ganadoresrollingmania::select(array('nombre', DB::raw("DATE(created_at) AS fecha")))->get()->toArray()
		);

		// datos de "retos entel"
		$sql = 'SELECT nombre FROM participante '
				. 'WHERE idparticipante IN (SELECT idparticipante FROM ganadoresretos WHERE estado = "G" AND idsorteo = '.$sorteo[0]['idsorteo'].')';
		$ultimosganadores = DB::select(DB::raw($sql));
		$sql = 'SELECT nombre, DATE(created_at) AS fecha FROM participante '
				. 'WHERE idparticipante IN (SELECT idparticipante FROM ganadoresretos WHERE estado = "G")';
		$todos = DB::select(DB::raw($sql));
		$datosRetosEntel = array(
			'ultimos' => $ultimosganadores,
			'todos' => $todos
		);

		/*
		//datos de "ultra fan"
		$datosUltraFan = array(
			'ultimos'	=> Ganadoresultrafan::select(array('nombre', DB::raw("DATE(created_at) AS fecha")))->whereDate('created_at', '=', '2016-02-29')->get()->toArray(),
			'todos'		=> Ganadoresultrafan::select(array('nombre', DB::raw("DATE(created_at) AS fecha")))->get()->toArray()
		);

		//datos de "tribuna entel"
		$ganadoresTribunaEntelParrafo1 = Ganadorestribunaentel::select(array('nombre', DB::raw("DATE(created_at) AS fecha")))->whereDate('created_at', '=', '2016-02-24')->take(10)->get()->toArray();
		$ganadoresTribunaEntelParrafo2 = Ganadorestribunaentel::select(array('nombre', DB::raw("DATE(created_at) AS fecha")))->whereDate('created_at', '=', '2016-02-24')->skip(10)->take(10)->get()->toArray();
		$datosTribunaEntel = array(
			'ultimos'	=> array('parrafo1' => $ganadoresTribunaEntelParrafo1, 'parrafo2' => $ganadoresTribunaEntelParrafo2),
			'todos'		=> Ganadorestribunaentel::select(array('nombre', DB::raw("DATE(created_at) AS fecha")))->get()->toArray()
		);
		 * 
		 */
		$datosUltraFan = null;
		$datosTribunaEntel = null;

		$fechaAyer = strtotime($fechaUltimoSorteo . ' 09:00:00');
		$fechaInicio = strtotime('2016-03-07 09:00:00');  // la hora es solo de referencia
		$htmlCalendario = '';
		$htmlCalendarioMobile = '';
		$clase = '';

		// <li> para calendario
		for ($i = 0; $i <= 24; $i++) {  // 25 es el numero de dias del concurso
			$segundos = 86400 * $i;
			$dia = $fechaInicio + $segundos;
			if ($dia == $fechaAyer) {
				$clase = 'active';
			} else if ($dia > $fechaAyer) {
				$clase = 'off';
			}
			$htmlCalendario .= '<li class="'.$clase.'" data-fecha="'.date('Y-m-d', $dia).'">'.date('d', $dia).'<span>'.date('M', $dia).'</span></li>';
		}

		// <option> para mobile
		for ($i = 0; $i <= 24; $i++) {
			$selected = '';
			$segundos = 86400 * $i;
			$dia = $fechaInicio + $segundos;
			if ($dia == $fechaAyer) {
				$selected = 'selected';
			}
			$htmlCalendarioMobile .= '<option value="'.date('Y-m-d', $dia).'" '.$selected.'>'.date('d M', $dia).'</option>';
		}

		return View::make('frontend.ganadores')
				->with('rnd', $this->_random)
				->with('bodyClass', $this->_bodyClass)
				->with('htmlCalendario', $htmlCalendario)
				->with('htmlCalendarioMobile', $htmlCalendarioMobile)
				->with('datosRollingMania', $datosRollingMania)
				->with('datosRetosEntel', $datosRetosEntel)
				->with('datosUltraFan', $datosUltraFan)
				->with('datosTribunaEntel', $datosTribunaEntel)
		;
	}

	public function getRollingMania()
	{
		$this->_bodyClass = 'rolling-mania';
		return View::make('frontend.rolling-mania')->with('rnd', $this->_random)->with('bodyClass', $this->_bodyClass);
	}

	public function getTwitterFeed()
	{
		$contador = 0;
		$tweets = Twitter::getSearch(['q' => $this->_hash . $this->_tag, 'count' => 50, 'format' => 'json']);
		$tweets = json_decode($tweets);
		foreach($tweets->statuses as $tweet) {
			$id_str = $tweet->id_str;
			// validar si el tweet ya existe en la tabla
			$registro = Twitterfeed::where('tw_id', '=', $id_str)->get()->toArray();
			if (count($registro) == 0) {
				$twitterFeed = new Twitterfeed;
				$twitterFeed->tw_id = $id_str;
				$twitterFeed->tw_created_at = $tweet->created_at;
				$twitterFeed->fecha = Funciones::fechaTweet($tweet->created_at);
				$twitterFeed->user_profile_image_url = $tweet->user->profile_image_url;
				$twitterFeed->user_name = $tweet->user->name;
				$twitterFeed->user_screen_name = $tweet->user->screen_name;
				$twitterFeed->text = $tweet->text;
				$twitterFeed->user_location = $tweet->user->time_zone;
				$twitterFeed->json = print_r($tweet, true);
				$twitterFeed->save();
				$contador++;
			}
		}
		return 'tweets ingresados: ' . $contador;
	}

}
