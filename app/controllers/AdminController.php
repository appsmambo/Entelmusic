<?php

class AdminController extends BaseController
{
	public function getLogin()
	{
		// entelmusic@entel.pe password: NmrxX9Fy
		// entelmusic@tribecamedia.com password: limaperu
		//$password = Hash::make('clave');
		//echo $password;exit;
		return View::make('admin.login');
	}

	public function postLogin()
	{
		$email = Input::get('email');
		$clave = Input::get('clave');

		// validar
		if (Auth::attempt(array('email' => $email, 'password' => $clave))) {
			return Redirect::to('/admin-inicio');
		} else {
			return View::make('admin.login')->with('msg', '¡Datos incorrectos!');
		}
	}

	public function getLogout()
	{
		Auth::logout();
		return Redirect::route('login');
	}

	public function getAdminInicio()
	{
		$sql = 'SELECT COUNT(DATE(created_at)) AS cantidad, DATE(created_at) AS fecha ' .
				'FROM participante '
				. 'GROUP BY DATE(created_at) '
				. 'ORDER BY 2';
		$participantes = DB::select(DB::raw($sql));

		$array = array();
		foreach ($participantes as $registro) {
			$fecha = Funciones::dateFormat($registro->fecha, 1);
			$array[] = array(
				'cantidad' => $registro->cantidad,
				'fecha' => $fecha
			);
		}

		$reporte = json_encode($array);

		return View::make('admin.index')->with('esInicio', 'si')->with('reporte', $reporte);
	}

	public function getSorteo()
	{
		return View::make('admin.sorteo');
	}

	public function postConsulta()
	{
		$haySorteo = 'no';
		$fecha = Input::get('fecha');
		$sorteo = Sorteo::whereDate('fechasorteo', '=', $fecha)->get()->toArray();
		if (count($sorteo) >= 1)
			$haySorteo = 'si';

		$sql = "SELECT p.idparticipante, p.nombre, p.numdocumento, p.telefono, p.correo, IF(p.flagcliente='1','Si','No') AS 'escliente', IF(p.flagcliente='1',3,1) AS opciones " .
				'FROM participante p, alternativas a '
				. 'WHERE p.respuesta = a.idalternativa AND '
				. "a.estado = '1' AND "
				. "DATE(p.created_at) = '$fecha' "
				. 'ORDER BY opciones DESC, p.nombre ASC';
		$participantes = DB::select(DB::raw($sql));

		$respuesta = array('haySorteo' => $haySorteo, 'participantes' => $participantes);

		return Response::json($respuesta, 200);
	}

	public function getParticipantes()
	{
		return View::make('admin.participantes');
	}

	public function postParticipantes()
	{
		$fecha = Funciones::fechaToMySQL(Input::get('fecha'));
		$participantes = Participante::whereDate('created_at', '=', $fecha)->get()->toArray();
		$rows = count($participantes);

		$sorteo = Sorteo::where('fechasorteo', '=', $fecha)->get()->toArray();

		$respuesta = array(
			'registros' => $rows,
			'sorteo' => count($sorteo)
		);

		return Response::json($respuesta, 200);
	}

	public function postParticipantesRango()
	{
		$fechaInicio = Funciones::fechaToMySQL(Input::get('fechaInicio'));
		$fechaFin = Funciones::fechaToMySQL(Input::get('fechaFin'));
		$participantes = Participante::whereDate('created_at', '>=', $fechaInicio)->whereDate('created_at', '<=', $fechaFin)->get()->toArray();
		$rows = count($participantes);

		return $rows;
	}

	public function getReporte($dia, $mes, $anio, $ganadores = '0')
	{
		$archivo = ($ganadores == '1') ? 'ganadores' : 'participantes';
		$fecha = $anio . '-' . $mes . '-' . $dia;

		if ($ganadores == '1') {
			$sql = "SELECT p.idparticipante, p.nombre, p.numdocumento, p.telefono, p.correo, IF(p.flagcliente='1','Si','No') AS 'escliente', gr.estado "
					. 'FROM participante p, ganadoresretos gr, sorteo s '
					. 'WHERE p.idparticipante = gr.idparticipante '
					. 'and gr.idsorteo = s.idsorteo '
					. "and fechasorteo = '$fecha' "
					. 'order by estado, nombre';
			$participantes = DB::select(DB::raw($sql));
		} else {
			$participantes = Participante::whereDate('created_at', '=', $fecha)->get()->toArray();
		}

		Excel::create($archivo, function($excel) use($participantes, $ganadores) {
			$excel->sheet('datos', function($sheet) use($participantes, $ganadores) {
				// primera fila, nombres de columnas
				if ($ganadores == '1') {
					$sheet->appendRow(array(
						'nombre',
						'numdocumento',
						'telefono',
						'correo',
						'cliente',
						'ganador/suplente'
					));
				} else {
					$sheet->appendRow(array(
						'nombre',
						'correo',
						'numdocumento',
						'cliente',
						'telefono'
					));
				}
				foreach($participantes as $participante) {
					if ($ganadores == '1') {
						$sheet->appendRow(array(
							$participante->nombre,
							$participante->numdocumento,
							$participante->telefono,
							$participante->correo,
							$participante->escliente,
							$participante->estado
						));
					} else {
						$sheet->appendRow(array(
							$participante['nombre'],
							$participante['correo'],
							$participante['numdocumento'],
							($participante['flagcliente'] == 1 ? 'si' : 'no'),
							$participante['telefono']
						));
					}
				}
			});
		})->download('xlsx');
	}

	public function getReporteRango($diaI, $mesI, $anioI, $diaF, $mesF, $anioF)
	{
		$fechaInicio = $anioI . '-' . $mesI . '-' . $diaI;
		$fechaFin = $anioF . '-' . $mesF . '-' . $diaF;

		$participantes = Participante::whereDate('created_at', '>=', $fechaInicio)->whereDate('created_at', '<=', $fechaFin)->orderBy('created_at')->get()->toArray();

		Excel::create('participantes', function($excel) use($participantes) {
			$excel->sheet('datos', function($sheet) use($participantes) {
				// primera fila, nombres de columnas
				$sheet->appendRow(array(
					'nombre',
					'correo',
					'numdocumento',
					'cliente',
					'telefono',
					'fecha'
				));
				foreach($participantes as $participante) {
					$sheet->appendRow(array(
						$participante['nombre'],
						$participante['correo'],
						$participante['numdocumento'],
						($participante['flagcliente'] == 1 ? 'si' : 'no'),
						$participante['telefono'],
						Funciones::dateFormat($participante['created_at'])
					));
				}
			});
		})->download('xlsx');
	}

	public function postGrabar()
	{
		$ids = explode(',', Input::get('ids'));
		$fecha = Input::get('fecha');

		$sorteo = new Sorteo;
		$sorteo->fechasorteo = $fecha;
		$sorteo->save();
		$idSorteo = $sorteo->idsorteo;

		$i = 0;
		foreach($ids as $id) {
			if ($id != '') {
				$ganadorRetos = new Ganadoresretos;
				$ganadorRetos->idsorteo = $idSorteo;
				$ganadorRetos->idparticipante = $id;
				if ($i <= 8) {
					$ganadorRetos->estado = 'G';
				} else {
					$ganadorRetos->estado = 'S';
				}
				$ganadorRetos->save();
			}
			$i++;
		}
		echo 'ok';
	}

	public function descarga($idsorteo)
	{
		//$sorteo = Sorteo::find($idsorteo);
		$sql = 'SELECT p.nombres, p.apellidos, p.apellidopaterno, p.apellidomaterno, '
					. 'p.correo, p.tipodocumento, p.numdocumento, p.telefono, '
					. 'p.flagcliente, p.fechanacimiento, o.numopciones '
				. 'FROM participante p, opciones o, participantexsorteo ps, alternativaxpregunta ap '
				. 'WHERE p.idparticipante = o.idparticipante AND '
				. '		 p.idparticipante = ps.idparticipante AND '
				. '		 ps.idalternativaxpregunta = ap.idalternativaxpregunta AND '
				. '		 p.idparticipante IN (SELECT idparticipante FROM participantexsorteo WHERE idsorteo = 1) AND '
				. '		 ap.flagcorrecto = "1"';
		$participantes = DB::select(DB::raw($sql));
		Excel::create('sorteo', function($excel) use($participantes) {
			$excel->sheet('participantes', function($sheet) use($participantes) {
				// primera fila, nombres de columnas
				$sheet->appendRow(array(
							'nombres', 
							'apellidos', 
							'apellidopaterno', 
							'apellidomaterno',
							'correo',
							'tipodocumento',
							'numdocumento',
							'telefono',
							'flagcliente',
							'fechanacimiento',
							'numopciones'
						));
				foreach($participantes as $participante) {
					for($i=1;$i<=$participante->numopciones;$i++) {
						$sheet->appendRow(array(
							$participante->nombres, 
							$participante->apellidos, 
							$participante->apellidopaterno, 
							$participante->apellidomaterno,
							$participante->correo,
							$participante->tipodocumento,
							$participante->numdocumento,
							$participante->telefono,
							$participante->flagcliente,
							$participante->fechanacimiento,
							$participante->numopciones
						));
					}
				}
			});
		})->download('xlsx');
	}

}