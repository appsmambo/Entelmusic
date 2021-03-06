@extends('layouts.master')
@section('contenido')
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">
			Crear lista de participantes por sorteo
		</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-clock-o fa-fw"></i> Lista de sorteos
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<ul class="timeline">
					@foreach ($sorteos as $sorteo)
					<li {{ ($fila = !$fila) ? 'class="timeline-inverted"' : '' }}>
						<div class="timeline-badge"><i class="fa fa-check"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">
									Sorteo #{{$sorteo['idsorteo']}} - {{Funciones::dateFormat($sorteo['fechasorteo'])}}
								</h4>
							</div>
							<div class="timeline-body">
								<p>
									<a href="{{url('descarga/'.$sorteo['idsorteo'])}}">
										<i class="fa fa-save"></i> Descargar lista de participantes
									</a>
								</p>
							</div>
						</div>
					</li>
					@endforeach
				</ul>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-8 -->
	<div class="col-lg-4">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-bell fa-fw"></i> Notifications Panel
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="list-group">
					<a href="#" class="list-group-item">
						<i class="fa fa-comment fa-fw"></i> New Comment
						<span class="pull-right text-muted small"><em>4 minutes ago</em>
						</span>
					</a>
					<a href="#" class="list-group-item">
						<i class="fa fa-twitter fa-fw"></i> 3 New Followers
						<span class="pull-right text-muted small"><em>12 minutes ago</em>
						</span>
					</a>
					<a href="#" class="list-group-item">
						<i class="fa fa-envelope fa-fw"></i> Message Sent
						<span class="pull-right text-muted small"><em>27 minutes ago</em>
						</span>
					</a>
					<a href="#" class="list-group-item">
						<i class="fa fa-tasks fa-fw"></i> New Task
						<span class="pull-right text-muted small"><em>43 minutes ago</em>
						</span>
					</a>
					<a href="#" class="list-group-item">
						<i class="fa fa-upload fa-fw"></i> Server Rebooted
						<span class="pull-right text-muted small"><em>11:32 AM</em>
						</span>
					</a>
					<a href="#" class="list-group-item">
						<i class="fa fa-bolt fa-fw"></i> Server Crashed!
						<span class="pull-right text-muted small"><em>11:13 AM</em>
						</span>
					</a>
					<a href="#" class="list-group-item">
						<i class="fa fa-warning fa-fw"></i> Server Not Responding
						<span class="pull-right text-muted small"><em>10:57 AM</em>
						</span>
					</a>
					<a href="#" class="list-group-item">
						<i class="fa fa-shopping-cart fa-fw"></i> New Order Placed
						<span class="pull-right text-muted small"><em>9:49 AM</em>
						</span>
					</a>
					<a href="#" class="list-group-item">
						<i class="fa fa-money fa-fw"></i> Payment Received
						<span class="pull-right text-muted small"><em>Yesterday</em>
						</span>
					</a>
				</div>
				<!-- /.list-group -->
				<a href="#" class="btn btn-default btn-block">View All Alerts</a>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-4 -->
</div>
<!-- /.row -->
@stop