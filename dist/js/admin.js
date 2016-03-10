var participantes = {};
var participantesSorteo = {};
var ganadores = {};
var indices = [];
var size = 0;

function getRandomInt(min, max)
{
	return Math.floor(Math.random() * (max - min + 1)) + min;
}

function shuffle(sourceArray)
{
	for (var i = 0; i < sourceArray.length - 1; i++) {
		var j = i + Math.floor(Math.random() * (sourceArray.length - i));
		var temp = sourceArray[j];
		sourceArray[j] = sourceArray[i];
		sourceArray[i] = temp;
	}
	return sourceArray;
}

function randomizar()
{
	var totalGanadores = 4;
	var documentos = '', k = 0;
	indices = [];
	ganadores = [];

	// obtiene los indices en un array
	for (var i = 0; i < sizes - 1; i++) {
		var j = getRandomInt(0, (sizes-1));
		indices[i] = j;
	}

	// chocolateo de los indices
	indices = shuffle(indices);
	indices = shuffle(indices);
	indices = shuffle(indices);

	// quitar duplicados, concatenando numdocumento
	// solo 12 elementos en el array ganadores
	for (var i = 0; i < sizes - 1; i++) {
		if (ganadores.length == totalGanadores) break;
		var n = documentos.indexOf(participantesSorteo[indices[i]].numdocumento);
		if (n == -1) {
			documentos += participantesSorteo[indices[i]].numdocumento+',';
			ganadores[k++] = participantesSorteo[indices[i]];
		}
	}

	// armar la tabla del modal con los ganadores
	var html = '';
	$.each(ganadores, function(i, item) {
		if (i <= 8)
			html += '<tr class="warning">';
		else
			html += '<tr class="danger">';
		html += '<td>' + item.nombre + '</td>';
		html += '<td>' + item.numdocumento + '</td>';
		html += '<td>' + item.telefono + '</td>';
		html += '<td>' + item.correo + '</td>';
		html += '<td>' + item.escliente + '</td>';
		html += '</tr>';
	});
	$('#ganadores tbody').html(html);
}

$(function() {
	$('#fecha').datepicker({
		format:"dd/mm/yyyy",
		startDate:"07/03/2016",
		endDate:"31/03/2016",
		language:"es",
		autoclose:true,
		todayHighlight:true
    });
	$('.input-daterange').datepicker({
		format:"dd/mm/yyyy",
		startDate:"07/03/2016",
		endDate:"31/03/2016",
		language:"es",
		autoclose:true,
		todayHighlight:true,
		toggleActive:true
	});
	$('#getreporte').change(function() {
		var control = $(this);
		$.ajax({
			type:'POST',
			url:baseUrl + '/admin-consulta',
			data:'fecha='+control.val(),
			success:function(data) {
				if (data.haySorteo == 'si')
					$('#ver-ganadores').show();
				else
					$('#generar-sorteo').show();

				participantes = data.participantes;
				var html = '';
				$.each(participantes, function(i, item) {
					html += '<tr>';
					html += '<td>' + (i+1) + '</td>';
					html += '<td>' + item.nombre + '</td>';
					html += '<td>' + item.numdocumento + '</td>';
					html += '<td>' + item.escliente + '</td>';
					html += '<td>' + item.opciones + '</td>';
					html += '</tr>';
				});
				$('#participantes tbody').html(html);
				return false;
			},
			dataType:'json'
		});
	});
	$('#consultar').click(function() {
		var fecha = $('#fecha').val();
		$.ajax({
			type:'POST',
			url:baseUrl + '/admin-participantes',
			data:'fecha='+fecha,
			success:function(data) {
				var url = baseUrl + '/admin-reporte';
				url += '/' + fecha;
				$('#reporte').attr('href', url + '/0');
				$('#reporte-ganadores').attr('href', url + '/' + data.sorteo);

				$('#datos .registros').html(data.registros);
				$('#datos').fadeIn();
				if (data.sorteo == 1) {
					$('#reporte-ganadores').fadeIn();
				}
				return false;
			},
			dataType:'json'
		});
	});
	$('#consultar-rango').click(function() {
		var fechaInicio = $('#fecha-inicio').val();
		var fechaFin = $('#fecha-fin').val();
		$.ajax({
			type:'POST',
			url:baseUrl + '/admin-participantes-rango',
			data:'fechaInicio='+fechaInicio+'&fechaFin='+fechaFin,
			success:function(data) {
				var url = baseUrl + '/admin-reporte-rango';
				url += '/' + fechaInicio + '/' + fechaFin;
				$('#reporte-rango').attr('href', url);

				$('#datos-rango .registros').html(data);
				$('#datos-rango').fadeIn();
				return false;
			},
			dataType:'text'
		});
	});
	$('#generar-sorteo').click(function() {
		sizes = 0;

		$.blockUI({ message: 'Espere un momento por favor...' });

		participantesSorteo = [];
		$.each(participantes, function(i, item) {
			if (item.opciones == 3) {
				participantesSorteo[sizes++] = item;
				participantesSorteo[sizes++] = item;
				participantesSorteo[sizes++] = item;
			} else {
				participantesSorteo[sizes++] = item;
			}
		});

		randomizar();

		$.unblockUI();

		$('#ganadoresModal').modal();

	});
	$('#randomizar').click(function() {
		randomizar();
	});
	$('#grabar').click(function() {
		var ids = '', fecha = $('#getreporte').val();
		$.each(ganadores, function(i, item) {
			ids += item.idparticipante + ',';
		});
		$.ajax({
			type:'POST',
			url:baseUrl + '/admin-grabar-sorteo',
			data:'ids='+ids+'&fecha='+fecha,
			success:function(data) {
				$.blockUI({ message: 'Espere un momento por favor...' });
				setTimeout(function(){
					$.unblockUI();
					$('#ganadoresModal').modal('hide');
				}, 3000);
				return false;
			},
			dataType:'text'
		});
	});
});