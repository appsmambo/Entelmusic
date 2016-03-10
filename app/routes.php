<?php

// frontend
Route::get('/', 'HomeController@getHome');
Route::get('/como-ganar', 'HomeController@getComoGanar');
Route::get('/como-ganar/rollingmania', 'HomeController@getComoGanarRollingMania');
Route::get('/retos', 'HomeController@getRetos');
Route::get('/participa', function()
{
	return View::make('participante');
});
Route::post('/participa', 'ParticipanteController@registrarParticipante');
Route::get('/ganadores', 'HomeController@getGanadores');
Route::get('/rolling-mania', 'HomeController@getRollingMania');

Route::post('rollingmania/participa', 'RollingmaniaController@registrarParticipante');

Route::get('/tribuna', function()
{
	return Redirect::to('http://www.entelmusic.pe:3000/');
});

// captcha
Route::get('/generacaptcha', function()
{
	return Funciones::crearCaptcha();
});

// para alimentar la tabla twitter, que muestra el feed en el home
Route::get('/twitter-feed', 'HomeController@getTwitterFeed');



// backend
Route::get('/admin879', array('as' => 'login', 'uses' => 'AdminController@getLogin'));
Route::post('/login', array('uses' => 'AdminController@postLogin'));
Route::get('/admin-logout', 'AdminController@getLogout');

Route::group(array('before' => 'auth.admin'), function()
{
	Route::get('/admin-inicio', array('as' => 'admin.inicio', 'uses' => 'AdminController@getAdminInicio'));

	Route::get('/admin-sorteo', 'AdminController@getSorteo');
	Route::post('/admin-consulta', 'AdminController@postConsulta');

	Route::get('/admin-participantes', 'AdminController@getParticipantes');
	Route::post('/admin-participantes', 'AdminController@postParticipantes');
	Route::post('/admin-participantes-rango', 'AdminController@postParticipantesRango');
	Route::get('/admin-reporte/{dia}/{mes}/{anio}/{ganadores}', 'AdminController@getReporte');
	Route::get('/admin-reporte-rango/{diaI}/{mesI}/{anioI}/{diaF}/{mesF}/{anioF}', 'AdminController@getReporteRango');

	Route::post('/admin-grabar-sorteo', 'AdminController@postGrabar');
});

Route::filter('auth.admin', function()
{
	if (!Auth::check()) {
		return Redirect::route('login');
	}
});

