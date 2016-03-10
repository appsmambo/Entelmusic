@extends('layouts.frontend')
@section('contenido')
<section class="container como-ganar">
	<div class="mensaje text-center">
		<span>¡</span>entel te lleva a ver a los
		<h2>
			ROLLING STONES<span>!</span>
		</h2>
		<strong>ingresa a cada una de las mecánicas y entérate cómo participar por entradas <span>¡</span>todos los días<span>!</span></strong>
		<p class="text-center">
			<span>*IMPORTANTE:</span> No olvides ir a las bases y condiciones para comprobar que tu participación sea totalmente válida.
		</p>
	</div>
	<div class="rolling-mania bloque" id="rolling-mania">
		<div class="row bloque-height">
			<div class="col-xs-12">
				<div class="panel-mostrado hidden-xs ">
					<div id="boton-rolling-mania" class="btn-acordeon" data-class="rolling-mania">
						<h2 class="col-sm-9">
							ROLLING MANÍA
						</h2>
						<div class="content-boton col-sm-3">
							<div class="pull-right">
								ver más <span>+</span>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-oculto">
					<h2 class="text-center">
						ROLLING<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br>
						<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>MANÍA
					</h2>
					<p class="center-block text-center">
						Por la compra de cualquier celular Entel entras al sorteo de una de las <span>10 entradas dobles</span> que regalaremos <br class="visible-xs"> <span>¡TODOS LOS DÍAS!</span>
					</p>
					<p class="center-block text-center">
						<span>TIENES TRES OPCIONES:</span>
					</p>
					<div class="opciones center-block">
						1. Si compras cualquier celular Samsung en Entel tendrás <strong>20 posibilidades.</strong><br>
						2. Si compras cualquier otro celular en Entel, en portabilidad, tendrás <strong>10 posibilidades.</strong><br>
						3. Si compras cualquier otro celular en Entel, sin portabilidad, tendrás <strong>5 posibilidades.</strong>
					</div>
					<div class="row final">
						<div class="col-lg-10 texto col-xs-9">
							* Tus opciones participan todos los días durante el periodo de la campaña que va del 1 al 28  de febrero del 2016.<br>
							* Las opciones ingresarán al sistema 48 horas después de activada la línea Entel y estarán vigentes hasta el 28 de febrero del 2016.<br>
							* La publicación de los ganadores se realizará en la web www.entelmusic.pe todos los días, a partir del 03 de febrero de 2016 hasta el 01 de marzo de 2016.<br>
							* Los ganadores del fin de semana serán publicados el lunes siguiente.<br>
							* No aplica para ventas realizadas a Empresas ni personas jurídicas (RUC 20)
						</div>
						<div class="col-lg-2 col-xs-3">
							<a href="{{url('pdf/BASES-ROLLING-MANIA.pdf')}}" target="_blank" class="ver-detalles pull-right">
								VER BASES <span>&gt;</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="retos-entel bloque" id="retos-entel">
		<div class="row bloque-height">
			<div class="col-xs-12">
				<div class="panel-mostrado hidden-xs ">
					<div  class="btn-acordeon" data-class="retos-entel">
						<h2 class="col-sm-9">
							RETOS ENTEL
						</h2>
						<div class="content-boton col-sm-3">
							<div class="pull-right">
								ver más <span>+</span>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-oculto">
					<h2 class="text-center">
						RETOS<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br>
						<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>ENTEL
					</h2>
					<p class="center-block text-center">
						Responde correctamente el reto del día y <span>PARTICIPA POR UNA ENTRADA DOBLE.</span>
					</p>
					
					<div class="listas-music-opciones center-block">
						<span class="numero-music">1</span> Ve a la sección <a class="music-span underline" href="{{url('/retos')}}">retos.</a><br>
						<span class="numero-music">2</span> Sigue las indicaciones.<br>
						<span class="numero-music">3</span> Responde correctamente.
					</div>
					<div class="row final clearfix">
						<div class="col-lg-10 texto col-xs-9">
							* Habrán retos diarios desde el 1 de febrero al 3 de marzo del 2016.<br>
							* Si no ganaste un reto puedes volver a intentarlo al día siguiente.<br>
							* Si te has registrado con un número Entel tienes 3 posibilidades de ganar.<br>
							* La publicación de los ganadores se realizará en la web www.entelmusic.pe al día siguiente de cada reto diario. <br>
							* Los ganadores del fin de semana serán publicados el lunes siguiente.   
						</div>
						<div class="col-lg-2 col-xs-3">
							<a href="{{url('pdf/BASES-RETOS-ENTEL.pdf')}}" target="_blank" class="ver-detalles pull-right">
								VER BASES <span>&gt;</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="ultra-fan bloque" id="ultra-fan">
		<div class="row bloque-height">
			<div class="col-xs-12">
				<div class="panel-mostrado hidden-xs ">
					<div  class="btn-acordeon" data-class="ultra-fan">
						<h2 class="col-sm-9">
							ULTRAFAN
						</h2>
						<div class="content-boton col-sm-3">
							<div class="pull-right">
								ver más <span>+</span>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-oculto">
					<h2 class="text-center">
						ULTRAFAN
					</h2>
					<p class="center-block text-center">
						Demuestra qué tan fan eres y  <span>participa por una entrada doble.</span>
					</p>
					
					<div class="listas-music-opciones center-block ">
						<span class="numero-music">1</span> Ve a nuestra <a class="music-span underline" href="https://www.facebook.com/EntelPeru" target="_blank">fanpage.</a><br>
						<span class="numero-music">2</span> Busca el post del <span class="music-span">ULTRAFAN</span>.<br>
						<span class="numero-music">3</span> <span class="music-span">Comenta en el post</span> con una foto que demuestre <br class="hidden-xs">
						<span class="hidden-xs">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> qué tan fan eres y cuéntanos por qué.
					</div>
					<div class="row final clearfix">
						<div class="col-lg-10 texto col-xs-9">
							<span><br><br></span>
							* El periodo de particpación se realizará de jueves a domingo durante todo el mes de febrero.
						</div>
						<div class="col-lg-2 col-xs-3">
							<a href="{{url('pdf/BASES-ULTRA-FAN.pdf')}}" target="_blank" class="ver-detalles pull-right">
								VER BASES <span>&gt;</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="tribuna-entel bloque" id="tribuna-entel">
		<div class="row bloque-height">
			<div class="col-xs-12">
				<div class="panel-mostrado hidden-xs ">
					<div  class="btn-acordeon" data-class="tribuna-entel">
						<h2 class="col-sm-9">
							TRIBUNA ENTEL
						</h2>
						<div class="content-boton col-sm-3">
							<div class="pull-right">
								ver más <span>+</span>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-oculto">
					<h2 class="text-center">
						TRIBUNA<br>
						ENTEL
					</h2>
					<p class="center-block text-center">
						Defiende tu sitio y <span>GÁNATE UNA ENTRADA,</span>
					</p>
					
					<div class="listas-music-opciones center-block">
						<span class="numero-music">1</span> Ve a la sección <a class="music-span underline" href="#">TRIBUNA ENTEL.</a> <br>
						<span class="numero-music">2</span> Revisa las <span class="music-span">fechas</span> y <span class="music-span">horarios</span> del concurso.<br>
						<span class="numero-music">3</span> Espera a que empiece <span class="music-span">la competencia</span>.<br>
						<span class="numero-music">4</span> Usa el <span class="music-span">HT #TribunaEntelRolling</span> y publica la mayor<br class="hidden-xs">
						<span class="hidden-xs">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> cantidad de tweets posibles <span class="music-span">DESDE NUESTRO SITE</span>. 
					</div>
					<div class="row final clearfix">
						<div class="col-lg-10 texto col-xs-9">
							<span><br></span>
							* Las fechas de participación serán el 8, 10, 15, 17, 22 y 24 de febrero de 6pm a 8pm.<br>
							* La publicación de los ganadores se realizará de forma automática al finalizar cada competencia en la web www.entelmusic.pe.
						</div>
						<div class="col-lg-2 col-xs-3">
							<a href="{{url('pdf/BASES-TRIBUNA-ENTEL.pdf')}}" target="_blank" class="ver-detalles pull-right">
								VER BASES <span>&gt;</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
@stop