@extends('layouts.frontend')
@section('contenido')
<section class="container ganadores">
	<div class="bloque rolling-mania cerrado">
		<a class="boton" href="#" data-bloque=".rolling-mania" data-estado="cerrado">&lt;</a>
		<div class="titulo">
			<div class="row">
				<div class="col-xs-12">
					<h2 class="text-center">
						COLDPLAY MANÍA
					</h2>
				</div>
			</div>
		</div>
		<div class="titulo-grande" style="display:none">
			<div class="row">
				<div class="col-md-8">
					<h2>
						COLDPLAY MANÍA
					</h2>
					<small>
						<strong>¡FELICITACIONES,</strong> SE VAN A VER A <strong>COLDPLAY!</strong>
					</small>
				</div>
				<div class="col-md-4 buscador">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<form class="hidden">
								<div class="form-group">
									<label for="rollingmania-dni" class="center-block text-center">Ingresa tu DNI</label>
									<input type="tel" class="form-control text-center" id="rollingmania-dni">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row resultados">
				<div class="col-md-5 col-lg-6">
					<div class="visible-xs visible-sm">
						<a class="elige-la-fecha" href="#" data-calendario="calendarioRollingMania">
							Elige la fecha
						</a>
						<ul class="calendario calendario-mobile calendarioRollingMania" style="display:none">
							{{$htmlCalendario}}
						</ul>
					</div>
					<div class="listado pull-left">
						<p class="rollingMania">
						@if(count($datosRollingMania['ultimos']) == 0)
							<span>Muy pronto conocerás a los ganadores del día de hoy.</span>
						@else
						@foreach($datosRollingMania['ultimos'] as $ganador)
							{{ucwords(strtolower($ganador['nombre']))}}<br>
						@endforeach
						@endif
						</p>
					</div>
					<div class="clearfix"></div>
					<p class="atc">
						Para cualquier consulta puedes comunicarte con nosotros al número 01 512-22-33. De lunes a viernes de 9:00 a.m. - 6:00 p.m.
					</p>
				</div>
				<div class="col-md-7 col-lg-6 hidden-xs hidden-sm">
					<ul class="calendario calendarioRollingMania">
						{{$htmlCalendario}}
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="bloque retos-entel cerrado">
		<a class="boton" href="#" data-bloque=".retos-entel" data-estado="cerrado">&lt;</a>
		<div class="titulo">
			<div class="row">
				<div class="col-xs-12">
					<h2 class="text-center">
						RETOS ENTEL
					</h2>
				</div>
			</div>
		</div>
		<div class="titulo-grande" style="display:none">
			<div class="row">
				<div class="col-md-8">
					<h2>
						RETOS ENTEL
					</h2>
					<small>
						<strong>¡FELICITACIONES,</strong> SE VAN A VER A <strong>COLDPLAY!</strong>
					</small>
				</div>
				<div class="col-md-4 buscador">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<form class="hidden">
								<div class="form-group">
									<label for="retosentel-dni" class="center-block text-center">Ingresa tu DNI</label>
									<input type="tel" class="form-control text-center" id="retosentel-dni">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row resultados">
				<div class="col-md-5 col-lg-6">
					<div class="visible-xs visible-sm">
						<a class="elige-la-fecha" href="#" data-calendario="calendarioRetosEntel">
							Elige la fecha
						</a>
						<ul class="calendario calendario-mobile calendarioRetosEntel" style="display:none">
							{{$htmlCalendario}}
						</ul>
					</div>
					<div class="listado pull-left">
						<p class="retosEntel">
						@if(count($datosRetosEntel['ultimos']) == 0)
							<span>Muy pronto conocerás a los ganadores del día de hoy.</span>
						@else
						@foreach($datosRetosEntel['ultimos'] as $ganador)
							{{ucwords(strtolower($ganador->nombre))}}<br>
						@endforeach
						@endif
						</p>
					</div>
					<div class="clearfix"></div>
					<p class="atc">
						Para cualquier consulta puedes comunicarte con nosotros al número 01 512-22-33. De lunes a viernes de 9:00 a.m. - 6:00 p.m.
					</p>
				</div>
				<div class="col-md-7 col-lg-6 hidden-xs hidden-sm">
					<ul class="calendario calendarioRetosEntel">
						{{$htmlCalendario}}
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!--
	<div class="bloque ultra-fan cerrado">
		<a class="boton" href="#" data-bloque=".ultra-fan" data-estado="cerrado">&lt;</a>
		<div class="titulo">
			<div class="row">
				<div class="col-xs-12">
					<h2 class="text-center">
						ULTRA FAN
					</h2>
				</div>
			</div>
		</div>
		<div class="titulo-grande" style="display:none">
			<div class="row">
				<div class="col-md-8">
					<h2>
						ULTRA FAN
					</h2>
					<small>
						<strong>¡FELICITACIONES,</strong> SE VAN A VER A <strong>LOS ROLLING STONES!</strong>
					</small>
				</div>
				<div class="col-md-4 buscador">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<form class="hidden">
								<div class="form-group">
									<label for="ultrafan-dni" class="center-block text-center">Ingresa tu DNI</label>
									<input type="tel" class="form-control text-center" id="ultrafan-dni">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row resultados">
				<div class="col-md-5 col-lg-6">
					<div class="visible-xs visible-sm">
						<a class="elige-la-fecha" href="#" data-calendario="calendarioUltraFan">
							Elige la fecha
						</a>
						<ul class="calendario calendario-mobile calendarioModificado calendarioUltraFan" style="display:none">
							<li data-fecha="2016-02-08">del 04 al 07 de Febrero</li>
							<li data-fecha="2016-02-15">del 11 al 14 de Febrero</li>
							<li data-fecha="2016-02-22">del 18 al 21 de Febrero</li>
							<li data-fecha="2016-02-29" class="active">del 25 al 28 de Febrero</li>
						</ul>
					</div>
					<div class="listado pull-left">
						<p class="ultraFan">
						@if(count($datosUltraFan['ultimos']) == 0)
							<span>Muy pronto conocerás a los ganadores del día de hoy.</span>
						@else
						@foreach($datosUltraFan['ultimos'] as $ganador)
							{{ucwords(strtolower($ganador['nombre']))}}<br>
						@endforeach
						@endif
						</p>
					</div>
					<div class="clearfix"></div>
					<p class="atc">
						Para cualquier consulta puedes comunicarte con nosotros al número 01 512-22-33. De lunes a viernes de 9:00 a.m. - 6:00 p.m.
					</p>
				</div>
				<div class="col-md-7 col-lg-6 hidden-xs hidden-sm">
					<ul class="calendario calendarioModificado calendarioUltraFan">
						<li data-fecha="2016-02-08">del 04 al 07 de Febrero</li>
						<li data-fecha="2016-02-15">del 11 al 14 de Febrero</li>
						<li data-fecha="2016-02-22">del 18 al 21 de Febrero</li>
						<li data-fecha="2016-02-29" class="active">del 25 al 28 de Febrero</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="bloque tribuna-entel cerrado">
		<a class="boton" href="#" data-bloque=".tribuna-entel" data-estado="cerrado">&lt;</a>
		<div class="titulo">
			<div class="row">
				<div class="col-xs-12">
					<h2 class="text-center">
						TRIBUNA ENTEL
					</h2>
				</div>
			</div>
		</div>
		<div class="titulo-grande" style="display:none">
			<div class="row">
				<div class="col-md-8">
					<h2>
						TRIBUNA ENTEL
					</h2>
					<small>
						<strong>¡FELICITACIONES,</strong> SE VAN A VER A <strong>LOS ROLLING STONES!</strong>
					</small>
				</div>
				<div class="col-md-4 buscador">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<form class="hidden">
								<div class="form-group">
									<label for="tribunaentel-dni" class="center-block text-center">Ingresa tu DNI</label>
									<input type="tel" class="form-control text-center" id="tribunaentel-dni">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row resultados">
				<div class="col-md-5 col-lg-6">
					<div class="visible-xs visible-sm">
						<a class="elige-la-fecha" href="#" data-calendario="calendarioTribunaEntel">
							Elige la fecha
						</a>
						<ul class="calendario calendario-mobile calendarioModificado calendarioTribunaEntel" style="display:none">
							<li data-fecha="2016-02-08">08 de Febrero</li>
							<li data-fecha="2016-02-10">10 de Febrero</li>
							<li data-fecha="2016-02-15">15 de Febrero</li>
							<li data-fecha="2016-02-17">17 de Febrero</li>
							<li data-fecha="2016-02-22">22 de Febrero</li>
							<li data-fecha="2016-02-24" class="active">24 de Febrero</li>
						</ul>
					</div>
					<div class="listado pull-left">
						@if(count($datosTribunaEntel['ultimos']) == 0)
						<p class="ultraFan">
							<span>Muy pronto conocerás a los ganadores del día de hoy.</span>
						</p>
						@else
						<div class="row">
							<div class="col-xs-6">
								<p class="tribunaEntel parrafo1">
								@foreach($datosTribunaEntel['ultimos']['parrafo1'] as $ganador)
									{{ucwords(strtolower($ganador['nombre']))}}<br>
								@endforeach
								</p>
							</div>
							<div class="col-xs-6">
								<p class="tribunaEntel parrafo2">
								@foreach($datosTribunaEntel['ultimos']['parrafo2'] as $ganador)
									{{ucwords(strtolower($ganador['nombre']))}}<br>
								@endforeach
								</p>
							</div>
						</div>
						@endif
					</div>
					<div class="clearfix"></div>
					<p class="atc">
						Para cualquier consulta puedes comunicarte con nosotros al número 01 512-22-33. De lunes a viernes de 9:00 a.m. - 6:00 p.m.
					</p>
				</div>
				<div class="col-md-7 col-lg-6 hidden-xs hidden-sm">
					<ul class="calendario calendarioModificado calendarioTribunaEntel">
						<li data-fecha="2016-02-08">08 de Febrero</li>
						<li data-fecha="2016-02-10">10 de Febrero</li>
						<li data-fecha="2016-02-15">15 de Febrero</li>
						<li data-fecha="2016-02-17">17 de Febrero</li>
						<li data-fecha="2016-02-22">22 de Febrero</li>
						<li data-fecha="2016-02-24" class="active">24 de Febrero</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	-->
</section>
@stop
@section('javascript')
<script>
	var ganadoresRollingMania, ganadoresRetosEntel, ganadoresUltraFan, ganadoresTribunaEntel;
	ganadoresRollingMania = {{json_encode($datosRollingMania['todos'])}};
	ganadoresRetosEntel = {{json_encode($datosRetosEntel['todos'])}};
	ganadoresUltraFan = {{json_encode($datosUltraFan['todos'])}};
	ganadoresTribunaEntel = {{json_encode($datosTribunaEntel['todos'])}};
</script>
@stop