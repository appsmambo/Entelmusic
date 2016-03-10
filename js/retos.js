function mensaje(texto) {
	var opts = {
		message: texto,
		css: {
			border: 'none',
			padding: '15px',
			backgroundColor: '#000',
			color: '#fff'
		}
	};
	$.blockUI(opts);
}
$(document).ready(function() {
	$('input:radio').screwDefaultButtons({
		image:'url("img/fondo-radio.png")',
		width:18,
		height:18
	});
	$('input:checkbox').screwDefaultButtons({
		image:'url("img/fondo-check.jpg")',
		width:29,
		height:28
	});
	$('.enviar').click(function() {
		var respuesta = $('input[name=respuesta]:checked').val();
		if (typeof respuesta === 'undefined')
			$('p#marca-respuesta').fadeIn('slow');
		else {
			$('p#marca-respuesta').fadeOut('slow');
			$('.cuestionario').fadeOut('fast', function() {
				$('#contenedorBloque').addClass('fondo-formulario');
				$('.formulario').fadeIn('slow', function() {
					$('#nombre').focus();
				});
			});
		}
		return false;
	});
	$('#participar').validetta({
		realTime:true,
		showErrorMessages:false,
		onValid:function(event) {
			event.preventDefault();
			var respuestaObjeto = $('input[name=respuesta]:checked');
			$('#terminar').val('procesAndo_').attr('disabled','disabled');
			var respuesta = respuestaObjeto.val();
			var idap = respuestaObjeto.data('idap');
			$('#respuesta').val(idap);
			var data = $('#participar').serialize();
			$.ajax({
				type:'POST',
				url:urlParticipa,
				data:data,
				success:function(data) {
					if (data.status == 'ok') {
						ga('send', 'pageview', '/retos-gracias-coldplay');
						// Facebook Pixel Code
						fbq('init', '387529508112391');
						fbq('track', "PageView");
						// End Facebook Pixel Code
						$('#terminar').remove();
						if (respuesta == '0') {
							$('#contenedorBloque').attr('class', 'col-md-7 fondo-respuesta-incorrecta');
							$('.formulario').fadeOut('fast', function() {
								$('.respuesta-no-ok').fadeIn('slow');
							});
						} else if (respuesta == '1') {
							$('#contenedorBloque').attr('class', 'col-md-7 fondo-respuesta-correcta');
							$('.formulario').fadeOut('fast', function() {
								$('.respuesta-ok').fadeIn('slow');
							});
						}
					} else if (data.status == 'yaRegistro') {
						$('#contenedorBloque').attr('class', 'col-md-7 fondo-ya-participaste');
						$('section.retos').addClass('lengua-gris');
						$('#terminar').remove();
						$('.formulario').fadeOut('fast', function() {
							$('.ya-registro').fadeIn('slow');
						});
					} else if (data.status == 'yaGano') {
						$('#contenedorBloque').attr('class', 'col-md-7 fondo-ya-participaste');
						$('#terminar').remove();
						$('.formulario').fadeOut('fast', function() {
							$('.ya-ganaste').fadeIn('slow');
						});
					} else if (data.status == 'error') {
						mensaje('Se produjo un error, vuelva a intentarlo.');
						setTimeout(function(){
							$('#terminar').val('tErminar_').removeAttr('disabled');
							$.unblockUI();
						},5000);
					} else if (data.status == 'errorCaptcha') {
						mensaje('El código de seguridad ingresado es incorrecto, vuelva a intentarlo.');
						setTimeout(function(){
							$('#terminar').val('tErminar_').removeAttr('disabled');
							$.unblockUI();
						},3000);
					}
				},
				dataType:'json'
			});
		},
		onError:function(event){
			var invalidFields = this.getInvalidFields();
			if (invalidFields.length == 1 && invalidFields[0].field.name == 'tyc') {
				$('#alerta').text('Acepta los Términos y Condiciones.');
			} else if (invalidFields.length == 1 && invalidFields[0].field.name == 'mayor-edad') {
				$('#alerta').text('Confirma que eres mayor de edad.');
			} else
				$('#alerta').text('Revisa los datos del formulario.');
		}
	});
});