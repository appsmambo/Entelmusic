@extends('layouts.frontend')
@section('contenido')
<section class="container-fluid contenedor">
	<div class="row no-gutter">
		<div class="col-sm-12 image-container">
			<img src="{{url('img/banner/principal.jpg')}}" alt="" class="center-block img-responsive">
		</div>
	</div>
</section>
<section class="container">
	<div class="row contenedor">
		<div class="col-xs-12">
			<div class="total-ganadores text-center hidden">
				<!--span class="llave">{</span> YA VAN MÁS DE <span>$ganadores</span> GANADORES <span class="llave">}</span-->
				<img src="{{url('img/ganadores.jpg')}}" alt="" class="img-responsive center-block">
			</div>
			<!-- leddisplay -->
			<div class="leddisplay">
				<canvas class="canvasld">
					GANADORES DEL 07 DE MARZO | RETOS ENTEL | ALDO CORNELIO LENGUA , JEAN CARLO MANUEL LEON ALFARO , JULIO PAREDES VELASQUEZ , TIMOTHY FLORES CASTILLO
				</canvas>
			</div>
		</div>
	</div>
	<!-- noticias coldplay -->
	<div class="row">
		<div class="col-md-8">
			<div class="contenedor">
				<a href="{{url('/como-ganar')}}">
					<img src="{{url('img/banner/gana-entradas.gif')}}" alt="" class="img-responsive">
				</a>
			</div>
			<div class="noticia blanco contenedor coldplay">
				<figure>
					<img src="{{url('img/banner/coldplay-igualdad.jpg')}}" alt="" class="img-responsive pull-left hidden-xs">
					<img src="{{url('img/banner/coldplay-igualdad-mobile.png')}}" alt="" class="center-block img-responsive visible-xs">
				</figure>
				<div class="texto">
					<div>
						<h2 class="coldplay-igualdad">
							<img src="{{url('img/home/igualdad.png')}}" alt="" class="img-responsive pull-left">
						</h2>
						<p>
							La igualdad es muy importante dentro de la banda. Todos reparten de forma equitativa los beneficios y todos tienen la norma de no poder consumir drogas.
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div> <!-- fin noticia -->
		</div>
		<div class="col-md-4 contenedor" style="padding-left:0">
			<img src="{{url('img/banner/coldplay-a-head-full-of-dreams-tour.jpg')}}" alt="" class="center-block img-responsive">
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="noticia doble blanco contenedor">
				<figure>
					<img src="{{url('img/banner/viva-la-vida.jpg')}}" alt="" class="center-block img-responsive">
				</figure>
				<div class="texto">
					<div>
						<h2 class="coldplay-viva-la-vida center-block">
							<img src="{{url('img/home/viva-la-vida.png')}}" alt="" class="img-responsive">
						</h2>
						<p class="center-block">
							¿Por qué el álbum "Viva la Vida" se titula en castellano?
							<br>
							Martin explicó que le llamó la atención ver cómo Frida Kahlo, una persona que lo había pasado tan mal en su vida, pintó hacia el final de sus días el cuadro "Viva a vida", un canto a la esperanza y al optimismo.
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div> <!-- fin noticia -->
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 contenedor">
			<img src="{{url('img/banner/parachutes.jpg')}}" alt="" class="img-responsive">
		</div>
		<div class="col-md-6 contenedor" style="padding-left:0">
			<div class="noticia no-imagen2 blanco disco">
				<div class="texto">
					<div>
						<h2 class="coldplay-yellow">
							<img src="{{url('img/home/yellow.png')}}" alt="" class="img-responsive pull-left">
							&nbsp;
							<img src="{{url('img/home/look-at-the-stars.png')}}" alt="" class="img-responsive pull-left">
						</h2>
						<p>
							Comenzó como una palabra comodín durante la grabación y luego pensaba sustituirse, pero acabó titulando uno de los singles más célebres del grupo.
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div> <!-- fin noticia -->
			<div class="noticia mas-noticias gris">
				<div class="texto">
					<div>
						<a href="#" class="ver-mas-b center-block text-center verMasNoticias" data-noticias="#noticiasRollingStones">
							VER MÁS <span class="sprite sprite-ver-mas-b"></span>
						</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div> <!-- fin noticia -->
		</div>
	</div>
	<!-- noticias rolling stones -->
	<div style="display:none" id="noticiasRollingStones">
		<div class="row">
			<div class="col-md-8">
				<div class="contenedor">
					<img src="{{url('img/banner/rolling-stones-2016.jpg')}}" alt="" class="img-responsive">
				</div>
				<div class="noticia blanco contenedor">
					<figure>
						<img src="{{url('img/banner/la-lengua.jpg')}}" alt="" class="center-block img-responsive">
					</figure>
					<div class="texto">
						<div>
							<h2 class="lengua">
								HOT <br>
								<span>
									LIPS <span class="sprite sprite-lengua"></span>
								</span>
							</h2>
							<p>
								La lengua fue diseñada en 1960 por John Pasche, quién cobró unos 70$. Representaba la antiautoridad, y fue inspirado en la diosa hindú Kali y en los labios del propio Jagger.
							</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div> <!-- fin noticia -->
			</div>
			<div class="col-md-4 contenedor" style="padding-left:0">
				<img src="{{url('img/banner/rolling-stones-ole.jpg')}}" alt="" class="center-block img-responsive">
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="noticia doble blanco contenedor">
					<figure>
						<img src="{{url('img/banner/the-glimmer-twins.jpg')}}" alt="" class="center-block img-responsive">
					</figure>
					<div class="texto">
						<div>
							<h2 class="fuerte text-center center-block corona">
								SIR MICHAEL PHILIP JAGGER
								<span>- MICK JAGGER -</span>
							</h2>
							<p class="center-block">
								 En 2003, Jagger fue nombrado Sir por el Príncipe de Gales, ya que la Reina Isabel se negó por estar en desacuerdo. Más tarde, Keith Richards también criticó abiertamente el nombramiento.
							</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div> <!-- fin noticia -->
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 contenedor">
				<img src="{{url('img/banner/after-math.jpg')}}" alt="" class="img-responsive">
			</div>
			<div class="col-md-6 contenedor" style="padding-left:0">
				<div class="noticia no-imagen2 blanco disco">
					<div class="texto">
						<div>
							<h2 class="cursiva">
								rollinG<br>
								<span>NUMBERS</span>
							</h2>
							<p>
								29 discos de estudio, 30 recopilatorios, 12 discos en directo,107 singles.
							</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div> <!-- fin noticia -->
				<div class="noticia mas-noticias gris">
					<div class="texto">
						<div>
							<!-- link VER MAS -->
						</div>
					</div>
					<div class="clearfix"></div>
				</div> <!-- fin noticia -->
			</div>
		</div>
	</div>
</section>
<section class="container-fluid contenedor">
	<div class="row no-gutter">
		<div class="col-md-12">
			<h3 class="titular text-center visible-xs">
				<span class="sprite sprite-hashtag-mobile"></span> ENTELMUSIC
			</h3>
			<h3 class="titular text-center hidden-xs">
				<span class="sprite sprite-hashtag"></span> ENTELMUSIC
			</h3>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<div class="tweets blanco">
				@foreach($tweets as $tweet)
				<div class="tweet">
					<figure class="pull-left">
						<img src="{{$tweet['user_profile_image_url']}}" alt="">
					</figure>
					<p class="usuario">
						<strong>{{$tweet['user_name']}}</strong> {{'@'.$tweet['user_screen_name']}}
						<span class="pull-right">{{$tweet['fecha']}}</span>
					</p>
					<p class="texto">
						{{$tweet['text']}}
					</p>
				</div>
				<div class="clearfix"></div>
				@endforeach
				</div>
			</div>
		</div>
	</div>
</section>
<section class="container-fluid contenedor">
	<div class="row no-gutter">
		<div class="col-md-12">
			<h3 class="titular text-center visible-xs">
				<span class="sprite sprite-instagram-mobile"></span> INSTAGRAM
			</h3>
			<h3 class="titular text-center hidden-xs">
				<span class="sprite sprite-instagram"></span> INSTAGRAM
			</h3>
		</div>
	</div>
	<div class="instagram-feed">
		<ul id="light-slider">
			@foreach($dataInstagram as $item)
			<li>
				<a href="{{$item['link']}}" target="_blank">
					<img src="{{$item['images']['low_resolution']['url']}}" class="img-responsive" alt="{{$item['caption']['text']}}" />
				</a>
			</li>
			@endforeach
		</ul>
	</div>
</section>
@stop