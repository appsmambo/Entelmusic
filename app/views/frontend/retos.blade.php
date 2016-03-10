@extends('layouts.frontend')
@section('contenido')
<section class="container-fluid retos">
	<div class="container">
		<div class="row">
			<div id="contenedorBloque" class="col-md-7">
				<div class="cuestionario bloque">
					<h2 class="text-center">
						<span>¡</span>Participa por una de las
						<br>
						<strong>4 entradas dObles</strong>
						<br>
						contestAndo esta pregunta<span>!</span>
					</h2>
					<p class="pregunta text-center">
						<br>
						{{Funciones::colorPregunta($reto[0]['reto'])}} <strong>¡Suerte! <span>;)</span></strong>
					</p>
					<div class="row opciones">
						<div class="col-sm-6">
							<input value="{{$alternativas[0]['estado']}}" type="radio" class="respuesta" id="respuesta1" name="respuesta" data-idap="{{$alternativas[0]['idalternativa']}}">
							<label for="respuesta1"> {{$alternativas[0]['alternativa']}}</label>
						</div>
						<div class="col-sm-6">
							<input value="{{$alternativas[1]['estado']}}" type="radio" class="respuesta" id="respuesta2" name="respuesta" data-idap="{{$alternativas[1]['idalternativa']}}">
							<label for="respuesta2"> {{$alternativas[1]['alternativa']}}</label>
						</div>
						<div class="col-sm-6">
							<input value="{{$alternativas[2]['estado']}}" type="radio" class="respuesta" id="respuesta3" name="respuesta" data-idap="{{$alternativas[2]['idalternativa']}}">
							<label for="respuesta3"> {{$alternativas[2]['alternativa']}}</label>
						</div>
						<div class="col-sm-6">
							<input value="{{$alternativas[3]['estado']}}" type="radio" class="respuesta" id="respuesta4" name="respuesta" data-idap="{{$alternativas[3]['idalternativa']}}">
							<label for="respuesta4"> {{$alternativas[3]['alternativa']}}</label>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<p id="marca-respuesta" style="display:none">
								Marca tu respuesta.
							</p>
						</div>
						<div class="col-sm-6">
							<a href="#" class="enviar pull-right">
								enviAr_
							</a>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<img src="{{url('img/retos/nube.png')}}" alt="" class="img-responsive center-block">
						</div>
					</div>
				</div> <!-- fin bloque custionario -->
				<div class="formulario bloque" style="display:none">
					<h2>
						ahora <strong>Completa</strong> tus <strong>dAtos</strong><span>:</span>
					</h2>
					<form name="participar" id="participar" action="{{url('participar')}}" method="post" class="form-horizontal">
						<input type="hidden" name="respuesta" id="respuesta">
						<div class="form-group">
							<label for="nombre" class="col-sm-4 control-label">Nombres y Apellidos</label>
							<div class="col-sm-8">
								<input type="text" class="form-control con-borde" id="nombre" name="nombre" data-validetta="required,minLength[5]" maxlength="200">
							</div>
						</div>
						<div class="form-group">
							<label for="numdocumento" class="col-sm-4 control-label">Número de Documento</label>
							<div class="col-sm-4">
								<input type="text" class="form-control con-borde" name="numdocumento" id="numdocumento" data-validetta="required,number,minLength[8]" maxlength="20">
							</div>
						</div>
						<div class="form-group">
							<label for="telefono" class="col-sm-4 control-label">N° Celular</label>
							<div class="col-sm-4">
								<input type="tel" class="form-control con-borde" name="telefono" id="telefono" data-validetta="required,number,minLength[9],maxLength[9]" maxlength="9">
							</div>
						</div>
						<div class="form-group">
							<label for="correo" class="col-sm-4 control-label">E-mail</label>
							<div class="col-sm-4">
								<input type="email" class="form-control con-borde" name="correo" id="correo" data-validetta="required,email" maxlength="100">
							</div>
						</div>
						<div class="form-group">
							<label for="captcha" class="col-sm-4 control-label">Código de seguridad</label>
							<div class="col-sm-4">
								<input type="text" class="form-control con-borde" name="captcha" id="captcha" data-validetta="required" maxlength="6">
							</div>
							<div id="elCaptcha" class="col-sm-4">
								
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="text-right">
									<input id="tyc" name="tyc" type="checkbox" value="1" data-validetta="required"> <label class="tyc" for="tyc">Acepto los <a href="{{url('pdf/BASES-RETOS-ENTEL.pdf')}}" target="_blank">Términos y Condiciones</a></label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="text-right">
									<input id="mayor-edad" name="mayor-edad" type="checkbox" value="1" data-validetta="required"> <label class="tyc" for="mayor-edad">Soy mayor de edad</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7">
								<br>
								<p id="alerta"></p>
							</div>
							<div class="col-sm-5">
								<br>
								<input type="submit" value="tErminar_" class="terminar pull-right" id="terminar">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<img src="{{url('img/retos/espacio.png')}}" alt="" class="img-responsive center-block">
							</div>
						</div>
					</form>
				</div> <!-- fin bloque formulario -->
				<div class="respuesta-ok bloque" style="display:none">
					<h2 class="text-center">
						<img src="{{url('img/retos/respuesta-correcta.png')}}" alt="" class="img-responsive center-block">
						<!--RESPUESTA <br>
						<strong>correcta<span>!</span></strong> <br>
						<small><span>ya estás participAndo</span></small-->
					</h2>
					<p class="text-center">
						recuerda, si tu número ingresado es entel, <br>
						tienes <span>3 oportunidades</span> de ganar <span>;)</span>
					</p>
					<div class="row">
						<div class="col-xs-12">
							<img src="{{url('img/retos/espacio.png')}}" alt="" class="img-responsive center-block">
						</div>
					</div>
				</div> <!-- fin bloque respuesta correcta -->
				<div class="respuesta-no-ok bloque" style="display:none">
					<h2 class="text-center">
						RESPUESTA <br>
						<strong>incorrecta<span>!</span></strong> <br>
						<small>vamos <span>, vuelve a intentArlo mañana</span></small>
					</h2>
					<div class="row">
						<div class="col-xs-12">
							<img src="{{url('img/retos/espacio.png')}}" alt="" class="img-responsive center-block">
							<img src="{{url('img/retos/espacio.png')}}" alt="" class="img-responsive center-block">
						</div>
					</div>
				</div> <!-- fin bloque respuesta incorrecta -->
				<div class="ya-registro bloque" style="display:none">
					<h2 class="text-center">
						HOY YA <br>
						<strong>participaste<span>!</span></strong> <br>
						<small><span>regresa mañana</span></small>
					</h2>
					<div class="row">
						<div class="col-xs-12">
							<img src="{{url('img/retos/espacio.png')}}" alt="" class="img-responsive center-block">
							<img src="{{url('img/retos/espacio.png')}}" alt="" class="img-responsive center-block">
						</div>
					</div>
				</div> <!-- fin bloque ya se registró -->
				<div class="ya-ganaste bloque" style="display:none">
					<h2 class="text-center">
						<span>¡</span><strong>FELICITACIONES<span>!</span></strong> <br><br>
						<small><span>TÚ YA GANASTE</span></small><br><br>
						Ingresa <a href="{{url('/ganadores')}}">aquí</a> para ver la lista de ganadores</a>
					</h2>
					<div class="row">
						<div class="col-xs-12">
							<img src="{{url('img/retos/espacio.png')}}" alt="" class="img-responsive center-block">
							<img src="{{url('img/retos/espacio.png')}}" alt="" class="img-responsive center-block">
						</div>
					</div>
				</div> <!-- fin bloque ya se registró -->
			</div>
		</div>
	</div>
</section>
@stop