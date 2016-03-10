var flagMobile = false;
(function($){
	$(window).load(function(){
		$('.menu a').hover(function () {
			$(this).find('img').attr('src', function (i, src) {
				var image = $(this).attr('src');
				var hover = $(this).data('src');
				$(this).attr('src', hover).data('src', image);
				return;
			})
		}, function () {
			$(this).find('img').attr('src', function (i, src) {
				var image = $(this).attr('src');
				var hover = $(this).data('src');
				$(this).attr('src', hover).data('src', image);
				return;
			})
		});

		$(".tweets").mCustomScrollbar({
			theme:'dark'
		});

		$(".lengua-stick").mCustomScrollbar();
		//$(selector).mCustomScrollbar("update");

		$("#light-slider").lightSlider({
			item:7,
			slideMargin:1,
			auto:true,
			pauseOnHover:true,
			loop:true,
			pager:false,
			pause:2500,
			responsive:[
				{
					breakpoint:1100,
					settings: {
						item:5
					}
				},
				{
					breakpoint:768,
					settings: {
						item:3
					}
				},
				{
					breakpoint:480,
					settings: {
						item:1
					}
				}
			]
		});

		$('.panel-oculto').hide();

		$('.btn-acordeon').click(function() {
			var target = $(this).data('clase');
			var analytics = $(this).data('analytics');

			ga('send', 'event', 'Como ganar', 'abrir', analytics);

			if ($('.bloque' + '.'+target).hasClass("active-height-bloque")) {
				$('.final, .panel-oculto').fadeOut('fast', function() {
					$('.col-xs-12').removeClass("active-height-bloque-dos");
					$('.bloque').removeClass("active-height-bloque");
					$('.panel-mostrado').fadeIn('slow');
				});
			} else {
				$('.panel-mostrado', '.' + target).fadeOut('slow', function() {
					$('.bloque'+ '.' + target).addClass("active-height-bloque");
					$('.' + target + ' .col-xs-12').addClass("active-height-bloque-dos");
					$('.panel-oculto', '.' + target).fadeIn();
					$('.final', '.' + target).fadeIn();
				});
			}

			$('html, body').animate({
				scrollTop:$('#'+analytics).offset().top
			}, 1000);

			return false;
		});

		$('.tooltip').tooltipster();
		$('.tooltip-2').tooltipster({
			position: 'bottom',
			offsetY: -30
		});

		$('.boton', '.ganadores').click(function() {
			var bloque = $(this).data('bloque');
			var estado = $(this).data('estado');
			if (estado == 'cerrado') {
				$(this).data('estado', 'abierto');
				$(bloque + ' .titulo').fadeOut('slow', function() {
					$(bloque).removeClass('cerrado').addClass('abierto');
					$(bloque + ' .titulo-grande').fadeIn('slow', 'linear');
				});
			} else {
				$(this).data('estado', 'cerrado');
				$(bloque + ' .titulo-grande').fadeOut('slow', 'linear', function(){
					$(bloque).removeClass('abierto').addClass('cerrado');
					$(bloque + ' .titulo').fadeIn('slow');
				});
			}
			return false;
		});

		$('.elige-la-fecha').click(function() {
			flagMobile = true;
			var calendario = $(this).data('calendario');
			$('.'+calendario).toggle();
			return false;
		});

		$('ul.calendarioRollingMania li').click(function() {
			var dia = $(this), contenedor = 'ul.calendario-mobile.calendarioRollingMania';
			if (dia.hasClass('off')) {
				return false;
			}
			var fecha = dia.data('fecha'), html = '';
			$.each(ganadoresRollingMania, function( key, value ) {
				if (value.fecha == fecha) {
					html += value.nombre.toLowerCase() + '<br>'
				}
			});
			$('p.rollingMania').html(html);
			$('ul.calendarioRollingMania li').removeClass('active');
			dia.addClass('active');
			if (flagMobile)
				$(contenedor).slideToggle();
		});

		$('ul.calendarioRetosEntel li').click(function() {
			var dia = $(this), contenedor = 'ul.calendario-mobile.calendarioRetosEntel';
			if (dia.hasClass('off')) {
				return false;
			}
			var fecha = dia.data('fecha'), html = '';
			$.each(ganadoresRetosEntel, function( key, value ) {
				if (value.fecha == fecha) {
					html += value.nombre.toLowerCase() + '<br>'
				}
			});
			$('p.retosEntel').html(html);
			$('ul.calendarioRetosEntel li').removeClass('active');
			dia.addClass('active');
			if (flagMobile)
				$(contenedor).slideToggle();
		});

		$('ul.calendarioUltraFan li').click(function() {
			var dia = $(this), contenedor = 'ul.calendario-mobile.calendarioUltraFan';
			if (dia.hasClass('off')) {
				return false;
			}
			var fecha = dia.data('fecha'), html = '';
			$.each(ganadoresUltraFan, function( key, value ) {
				if (value.fecha == fecha) {
					html += value.nombre.toLowerCase() + '<br>'
				}
			});
			$('p.ultraFan').html(html);
			$('ul.calendarioUltraFan li').removeClass('active');
			dia.addClass('active');
			if (flagMobile)
				$(contenedor).slideToggle();
		});

		$('ul.calendarioTribunaEntel li').click(function() {
			var dia = $(this), contenedor = 'ul.calendario-mobile.calendarioTribunaEntel';
			if (dia.hasClass('off')) {
				return false;
			}
			var fecha = dia.data('fecha'), html1 = '', html2 = '', contador = 0;
			$.each(ganadoresTribunaEntel, function( key, value ) {
				if (value.fecha == fecha) {
					contador++;
					if (contador <= 10)
						html1 += value.nombre.toLowerCase() + '<br>';
					else
						html2 += value.nombre.toLowerCase() + '<br>';
				}
			});
			$('p.tribunaEntel.parrafo1').html(html1);
			$('p.tribunaEntel.parrafo2').html(html2);
			$('ul.calendarioTribunaEntel li').removeClass('active');
			dia.addClass('active');
			if (flagMobile)
				$(contenedor).slideToggle();
		});

		$('.verMasNoticias').click(function() {
			var control = $(this);
			var noticias = control.data('noticias');
			$(noticias).slideToggle();
			control.data('noticias', '');
			$('html, body').animate({
				scrollTop:$(noticias).offset().top
			}, 1000);
			return false;
		});
	});
})(jQuery);