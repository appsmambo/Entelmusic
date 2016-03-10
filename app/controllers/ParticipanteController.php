<?php

class ParticipanteController extends BaseController
{

	private $_messages = null;
	private $_rules = null;
	public function __construct()
	{
		$this->_messages = array(
			'required'		=> 'El campo :attribute es obligatorio.',
			'email'			=> 'Ingrese su cuenta de correo electrónico.',
			'string'		=> 'El campo solo permite letras.',
			'digits'		=> 'El campo solo permite números.',
			'correo.unique'	=> 'El correo :value ya está registrado en nuestro sistema.',
			//'email.unique'	=> 'El email :value ya está registrado en nuestro sistema.',
			//'codigo.unique'	=> 'El código :value ya está registrado en nuestro sistema.',
			//'codigo.digits'	=> 'El código debe tener :digits dígitos.',
		);
		$this->_rules = array(
			'nombre'			=> 'required|min:2',
			'numdocumento'		=> 'required|min:8',
			'telefono'			=> 'required|min:9',
			//'correo'			=> 'required|email|unique:participante',
			'correo'			=> 'required|email',
		);
	}

	public function index()
	{
		//
	}

	public function registrarParticipante()
	{
		$validator = Validator::make(Input::all(), $this->_rules, $this->_messages);

		// check if the validator failed -----------------------
		if ($validator->fails()) {
			$messages = $validator->messages();
			$respuesta = array('status' => 'error', 'messages' => 'validator');
		} else {
			$fechaHoy = date('Y-m-d');

			// validar si el usuario ya gano
			$sql = 'SELECT idganador FROM ganadoresretos '
					. 'WHERE idparticipante IN ('
					. 'SELECT idparticipante FROM participante WHERE numdocumento = "'.Input::get('numdocumento').'"'
					. ') AND '
					. 'estado = "G"';
			$participantes = DB::select(DB::raw($sql));
			if (count($participantes) >= 1 && isset($participantes[0]->idganador)) {
				$respuesta = array('status' => 'yaGano');
				return Response::json($respuesta, 200);
			}

			// validar si el usuario ya se registro hoy
			//select * from `participante` where `created_at` = '2016-01-26' and 
			//									(`numdocumento` = '41363363' or 
			//									 `telefono` = '987684468' or 
			//									 `correo` = 'quintanilla.peru@gmail.com')
			$registro = Participante::whereDate('created_at', '=', $fechaHoy)
							->where(function($query)
							{
								$query->where('numdocumento', '=', Input::get('numdocumento'))
									->orWhere('telefono', '=', Input::get('telefono'))
									->orWhere('correo', '=', Input::get('correo'));
							})
							->get()->toArray();

			if (count($registro) >= 1) {
				// ya se registro hoy
				$respuesta = array('status' => 'yaRegistro');
			} else {
				// verificar telefono, si es cliente entel
				$flagCliente = '0';
				$telefono = Telefonos::where('telefono', 'LIKE', '%'.Input::get('telefono').'%')->get()->toArray();
				if (count($telefono) >= 1) {
					$flagCliente = '1';
				} else {
					$telefono = Telefonostemp::where('telefono', 'LIKE', '%'.Input::get('telefono').'%')->get()->toArray();
					if (count($telefono) >= 1) {
						$flagCliente = '1';
					}
				}

				DB::beginTransaction();
				try {

					$participante = new Participante;

					$participante->nombre			= ucwords(strtolower(Input::get('nombre')));
					$participante->numdocumento		= Input::get('numdocumento');
					$participante->correo			= strtolower(Input::get('correo'));
					$participante->flagcliente		= $flagCliente;
					$participante->telefono			= Input::get('telefono');
					$participante->respuesta		= Input::get('respuesta');
					$participante->ip				= Request::getClientIp(true);

					$participante->save();

				} catch (ValidationException $e) {
					DB::rollback();
					$respuesta = array('status' => 'error', 'messages' => 'ValidationException');
				} catch (\Exception $e) {
					DB::rollback();
					$respuesta = array('status' => 'error', 'messages' => 'Exception');
				}
				$respuesta = array('status' => 'ok');
				DB::commit();
			}
		}
		return Response::json($respuesta, 200);
		
	}
}
