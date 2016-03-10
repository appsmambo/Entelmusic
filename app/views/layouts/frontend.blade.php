<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Entel music</title>
		<meta name="description" content="¡Sé parte de la historia del rock! Con Entel puedes vivir la experiencia COLDPLAY.">
		<meta property="og:site_name" content="Entel music">
		<meta property="og:title" content="Entel music">
		<meta property="og:type" content="website">
		<meta property="og:url" content="{{url()}}">
		<meta property="og:image" content="{{url()}}/img/compartir.jpg">
		<meta property="og:locale" content="es_LA">
		<meta property="og:description" content="¡Sé parte de la historia del rock! Con Entel puedes vivir la experiencia COLDPLAY.">
		<meta property="fb:admins" content="100008010128050">
		<meta property="fb:app_id" content="1134780826556808">
		<link href="{{url('img/iconos/favicon.ico')}}" rel="shortcut icon">
		<script src="{{url('bower_components/queryLoader/queryloader2.min.js')}}"></script>
		<script type="text/javascript">
			window.addEventListener('DOMContentLoaded', function() {
				QueryLoader2(document.querySelector("body"), {
					barColor:"#0254a0",
					backgroundColor:"#0254a0",
					percentage:false,
					barHeight:0,
					minimumTime:200,
					maxTime:35000,
					fadeOutTime:750,
					onComplete:function() {
						@if ($bodyClass == 'retos')
						document.getElementById('elCaptcha').innerHTML = '<img src="{{url('/generacaptcha')}}" alt="">';
						@endif
						@if ($bodyClass == 'como-ganar-coldplaymania')
						$('#boton-coldplay-mania').trigger('click');
						@endif
					}
				});
			});
		</script>
		<link href="{{url('bower_components/bootstrap/custom/css/bootstrap.min.css')}}" rel="stylesheet">
		<link href="{{url('bower_components/mCustomScrollbar/jquery.mCustomScrollbar.min.css')}}" rel="stylesheet">
		<link href="{{url('bower_components/lightslider/css/lightslider.min.css?v='.$rnd)}}" rel="stylesheet">
		<link href="{{url('bower_components/tooltipster/tooltipster.css?v='.$rnd)}}" rel="stylesheet">
		@if ($bodyClass == 'retos')
		<link href="{{url('bower_components/validetta/validetta.min.css')}}" rel="stylesheet">
		@endif
		<link href="{{url('css/main.css?v='.$rnd)}}" rel="stylesheet">
		<link href="{{url('css/menu.css?v='.$rnd)}}" rel="stylesheet">
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<script src="{{url('bower_components/jquery/dist/jquery.min.js')}}"></script>
		<script src="{{url('bower_components/bootstrap/custom/js/bootstrap.min.js')}}"></script>
		<script src="{{url('bower_components/lightslider/js/lightslider.min.js')}}"></script>
		<script src="{{url('bower_components/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js')}}"></script>
		<script src="{{url('bower_components/tooltipster/jquery.tooltipster.min.js?v='.$rnd)}}"></script>
		@if ($bodyClass == 'home')
		<script src="{{url('bower_components/leddisplay/jquery.leddisplay.js')}}"></script>
		@endif
		@if ($bodyClass == 'retos')
		<script src="{{url('bower_components/screwdefaultbuttonsV2/jquery.screwdefaultbuttonsV2.min.js')}}"></script>
		<script src="{{url('bower_components/validetta/validetta.min.js')}}"></script>
		<script src="{{url('bower_components/blockUI/jquery.blockUI.js')}}"></script>
		@endif
		<script src="{{url('js/main.js?v='.$rnd)}}"></script>
		<script src="{{url('js/menu.js?v='.$rnd)}}"></script>
		@if ($bodyClass == 'retos')
		<script src="{{url('js/retos.js?v='.$rnd)}}"></script>
		<script>
			var urlParticipa = '{{url('/participa')}}';
		</script>
		@endif
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
			ga('create', 'UA-72951267-1', 'auto');
			ga('require', 'displayfeatures');
			ga('send', 'pageview');
		</script>
	</head>
	<body class="{{$bodyClass}}">
		<h1 class="hidden">
			Entelmusic
		</h1>
		<header class="contenedor">
			<div class="container">
				<div id="cssmenu" class="visible-xs visible-sm">
					<ul>
						<li><a href="{{url()}}">hOme_</a></li>
						<li><a href="{{url('/retos')}}">rEtos_</a></li>
						<li><a href="{{url('/como-ganar')}}">¿cómo ganar?</a></li>
						<li><a href="{{url('/ganadores')}}">ganadores</a></li>
					</ul>
				</div>
				<div class="row hidden-xs hidden-sm">
					<div class="col-md-4">
						<a href="{{url()}}" title="" class="logo">
							<img src="{{url('img/logos/entel.png')}}" alt="" class="img-responsive center-block">
						</a>
					</div>
					<div class="col-md-8">
						<div class="row blanco">
							<div class="col-md-8">
								<div class="row links">
									<div class="col-md-6">
										<a href="{{url('/como-ganar')}}" class="link-como-ganar center-block tooltip">
											<span class="sprite sprite-como-ganar"></span> ¿cómo ganar?
										</a>
									</div>
									<div class="col-md-6">
										<a href="{{url('/ganadores')}}" class="link-ganadores center-block tooltip">
											<span class="sprite sprite-ganadores"></span> ganadores
										</a>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<p class="text-right sociales">
									<a href="https://www.facebook.com/EntelPeru" target="_blank">
										<span class="sprite sprite-social-facebook"></span>
									</a>
									<a href="https://twitter.com/EntelPeru" target="_blank">
										<span class="sprite sprite-social-twitter"></span>
									</a>
									<a href="https://www.instagram.com/entel_peru/" target="_blank">
										<span class="sprite sprite-social-instagram"></span>
									</a>
									<a href="#">
										<span class="sprite sprite-lg"></span>
									</a>
								</p>
							</div>
						</div>
						<div class="row menu no-gutter">
							<div class="col-md-4">
								<a href="{{url()}}" class="menu-home">
									<img src="{{url('img/menu/home.jpg')}}" alt="" class="img-responsive center-block" data-src="{{url('img/menu/home.gif')}}">
									<span class="hidden">hOme<span>_</span></span>
								</a>
							</div>
							<div class="col-md-4">
								<a href="{{url('/retos')}}" class="menu-retos tooltip-2">
									<img src="{{url('img/menu/retos.jpg')}}" alt="" class="img-responsive center-block" data-src="{{url('img/menu/retos.gif')}}">
									<span class="hidden">rEtos<span>_</span></span>
								</a>
							</div>
							<div class="col-md-4">
								<a href="#" class="menu-tribuna tooltip-2" title="¡Pronto más Rock!">
									<img src="{{url('img/menu/tribuna-entel.jpg')}}" alt="" class="img-responsive center-block" data-src="{{url('img/menu/tribuna-entel.gif')}}">
									<span class="hidden">tribUna entel<span>_</span></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		@yield('contenido')
		<footer>
			<p class="text-center">
				<a href="http://www.entel.pe/" target="_blank">
					<img src="{{url('img/logos/pie.png')}}" alt="" class="center-block">
				</a>
				Copyright Entel Perú S.A., Todos los derechos reservados.<br>
				<small>
					Retos Entel (R.D. N° 0926-2016-ONAGI-DGAE-DA) <br class="visible-xs"> <span class="hidden-xs">-</span> Coldplay Manía (R.D. N° 0932-2016-ONAGI-DGAE-DA)
				</small>
			</p>
		</footer>
		@if ($bodyClass == 'home')
		<script>
			// led display
			var options = {
				backgroundColor:'#1b1a1a',
				enabledPixelColor:'#ff6702',
				pixelSize:5,
				stepDelay:50,
				horizontalPixelsCount:130,
				verticalPixelsCount:5,
				pixelRatio:.65
			};
			$('.canvasld').leddisplay($.extend(options, {pixelSize: 5}));
		</script>
		@endif
		@yield('javascript')
		<div class="hidden">
			<img src="{{url('img/menu/home.gif')}}" alt="">
			<img src="{{url('img/menu/retos.gif')}}" alt="">
			<img src="{{url('img/menu/tribuna-entel.gif')}}" alt="">
			<!-- Google Tag Manager -->
			<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-WK7ZQG"
			height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
			<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
			new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
			j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
			'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
			})(window,document,'script','dataLayer','GTM-WK7ZQG');</script>
			<!-- End Google Tag Manager -->
			<!-- Google Code for Campa&ntilde;a ROLLING STONES Conversion Page -->
			<script type="text/javascript">
			/* <![CDATA[ */
			var google_conversion_id = 942255474;
			var google_conversion_language = "en";
			var google_conversion_format = "3";
			var google_conversion_color = "ffffff";
			var google_conversion_label = "3aGFCK2k4mMQ8tqmwQM";
			var google_remarketing_only = false;
			/* ]]> */
			</script>
			<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
			</script>
			<noscript>
			<div style="display:inline;">
			<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/942255474/?label=3aGFCK2k4mMQ8tqmwQM&amp;guid=ON&amp;script=0"/>
			</div>
			</noscript>
			<!-- End Google Code -->
			<!-- Facebook Pixel Code -->
			<script>
			!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
			n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
			n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
			t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
			document,'script','//connect.facebook.net/en_US/fbevents.js');
			</script>
			<!--noscript><img height="1" width="1" style="display:none"
			src="https://www.facebook.com/tr?id=387529508112391&ev=PageView&noscript=1"
			/></noscript-->
			<!-- End Facebook Pixel Code -->
			<!-- Twitter Conversion -->
			<script src="//platform.twitter.com/oct.js" type="text/javascript"></script>
			<script type="text/javascript">twttr.conversion.trackPid('nua8p', { tw_sale_amount: 0, tw_order_quantity: 0 });</script>
			<noscript>
			<img height="1" width="1" style="display:none;" alt="" src="https://analytics.twitter.com/i/adsct?txn_id=nua8p&p_id=Twitter&tw_sale_amount=0&tw_order_quantity=0" />
			<img height="1" width="1" style="display:none;" alt="" src="//t.co/i/adsct?txn_id=nua8p&p_id=Twitter&tw_sale_amount=0&tw_order_quantity=0" />
			</noscript>
			<!-- End Twitter Conversion -->
		</div>
	</body>
</html>