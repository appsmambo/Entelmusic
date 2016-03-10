@extends('layouts.frontend')
@section('contenido')
<section class="container como-ganar">
	<div class="mensaje text-center">
		<div class="row">
			<div class="hidden-xs col-sm-3 col-md-4">
				<img src="{{url('img/como-ganar/coldplay1.png')}}" alt="" class="img-responsive pull-right">
			</div>
			<div class="col-sm-6 col-md-4">
				<span>¡</span>entel te lleva a ver a
				<h2>
					<span class="hidden-xs">&nbsp;&nbsp;&nbsp;</span>COLDPLAY<span>!</span>
				</h2>
			</div>
			<div class="hidden-xs col-sm-3 col-md-4">
				<img src="{{url('img/como-ganar/coldplay2.png')}}" alt="" class="img-responsive pull-left">
			</div>
		</div>
		<p>
			<strong>ingresa a cada una de las mecánicas y entérate cómo participar por entradas <span>¡</span>todos los días<span>!</span></strong>
			<br>
			<span>*IMPORTANTE:</span> No olvides ir a las bases y condiciones para comprobar que tu participación sea totalmente válida.
		</p>
	</div>
	<div class="rolling-mania bloque" id="coldplay-mania">
		<div class="row bloque-height">
			<div class="col-xs-12">
				<div class="panel-mostrado hidden-xs">
					<div class="btn-acordeon" data-clase="rolling-mania" data-analytics="coldplay-mania">
						<h2 class="col-sm-9">
							COLDPLAY MANÍA
						</h2>
						<div class="content-boton col-sm-3">
							<div class="pull-right">
								ver más <span>+</span>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-oculto" style="display:none">
					<h2 class="text-center">
						COLDPLAY<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br>
						<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>MANÍA
					</h2>
					<p class="center-block text-center">
						A partir del <strong>7 DE MARZO</strong>, por la compra de cualquier equipo Entel Participa por una de las <span>4 ENTRADAS DOBLES</span> que regalamos <br class="visible-xs"> <span>¡TODOS LOS DIAS!</span>
					</p>
					<p class="center-block text-center">
						<span>TIENES TRES OPCIONES:</span>
					</p>
					<div class="opciones center-block">
						1. Si compras cualquier equipo LG en Entel tendrás <strong>20 posibilidades.</strong><br>
						2. Si compras cualquier otro equipo en Entel, en portabilidad, tendrás <strong>10 posibilidades.</strong><br>
						3. Si compras cualquier otro equipo en Entel, sin portabilidad, tendrás <strong>5 posibilidades.</strong>
					</div>
				</div>
			</div>
			<div class="row final" style="display:none">
				<div class="col-lg-10 texto col-sm-9">
					* El periodo de participación se dará entre el 7 y el 31 de marzo del 2016.<br>
					* El anuncio de ganadores de los días 7 y 8 de marzo se realizará el miércoles 9 de marzo.<br>
					* Las opciones ingresarán al sistema 48 horas después de activada la línea Entel y estarán vigentes hasta el 31 de marzo del 2016.<br>
					* La publicación de los ganadores se realizará en la web www.entelmusic.pe todos los días, a partir del 08 de marzo de 2016 hasta el 01 de abril de 2016.<br>
					* Los ganadores del fin de semana serán publicados el lunes siguiente.<br>
					* R.D. N° 0932-2016-ONAGI-DGAE-DA
				</div>
				<div class="col-lg-2 col-sm-3">
					<a href="{{url('pdf/BASES-COLDPLAY-MANIA.pdf')}}" target="_blank" class="ver-detalles pull-right">
						VER BASES <span>&gt;</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="retos-entel bloque" id="retos-entel">
		<div class="row bloque-height">
			<div class="col-xs-12">
				<div class="panel-mostrado hidden-xs">
					<div class="btn-acordeon" data-clase="retos-entel" data-analytics="retos-entel">
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
				<div class="panel-oculto" style="display:none">
					<h2 class="text-center">
						RETOS<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br>
						<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>ENTEL
					</h2>
					<p class="center-block text-center">
						A partir del <strong>7 DE MARZO</strong>, responde correctamente el reto del día y <span>PARTICIPA POR UNA DE LAS 4 ENTRADAS DOBLES.</span>
					</p>
					<div class="listas-music-opciones center-block">
						<span class="numero-music">1</span> Ve a la sección <a class="music-span underline" href="{{url('/retos')}}">retos.</a><br>
						<span class="numero-music">2</span> Sigue las indicaciones.<br>
						<span class="numero-music">3</span> Responde correctamente.
					</div>
				</div>
			</div>
			<div class="row final" style="display:none">
				<div class="col-lg-10 texto col-sm-9">
					* Habrán retos diarios desde el 7 de marzo al 31 de marzo del 2016.<br>
					* Si no ganaste un reto puedes volver a intentarlo al día siguiente.<br>
					* Si te has registrado con un número Entel tienes 3 posibilidades de ganar.<br>
					* La publicación de los ganadores se realizará en la web www.entelmusic.pe al día siguiente de cada reto diario.<br>
					* Los ganadores del fin de semana serán publicados el lunes siguiente.<br>
					* R.D. N° 0926-2016-ONAGI-DGAE-DA
				</div>
				<div class="col-lg-2 col-sm-3">
					<a href="{{url('pdf/BASES-RETOS-ENTEL.pdf')}}" target="_blank" class="ver-detalles pull-right">
						VER BASES <span>&gt;</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!--div class="ultra-fan bloque" id="ultra-fan">
		<div class="row bloque-height">
			<div class="col-xs-12">
				<div class="panel-mostrado hidden-xs ">
					<div class="" data-clase="ultra-fan">
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
						Demuestra qué tan fan eres y <span>participa por una entrada doble.</span>
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
							* El periodo de particpación se realizará de jueves a domingo durante todo el mes de febrero.<br>
							* R.D. N° 0193-2016-ONAGI-DGAE-DA
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
					<div class="" data-clase="tribuna-entel">
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
							* La publicación de los ganadores se realizará de forma automática al finalizar cada competencia en la web www.entelmusic.pe.<br>
							* R.D. N° 0194-2016-ONAGI-DGAE-DA
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
	</div-->
</section>
@stop