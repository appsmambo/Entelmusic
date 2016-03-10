<?php

// You can find the keys here : https://apps.twitter.com/

return [
	'debug'               => false,
	
	'API_URL'             => 'api.twitter.com',
	'UPLOAD_URL'          => 'upload.twitter.com',
	'API_VERSION'         => '1.1',
	'AUTHENTICATE_URL'    => 'https://api.twitter.com/oauth/authenticate',
	'AUTHORIZE_URL'       => 'https://api.twitter.com/oauth/authorize',
	'ACCESS_TOKEN_URL'    => 'https://api.twitter.com/oauth/access_token',
	'REQUEST_TOKEN_URL'   => 'https://api.twitter.com/oauth/request_token',
	'USE_SSL'             => true,
	
	'CONSUMER_KEY'        => function_exists('env') ? env('TWITTER_CONSUMER_KEY', 'CdOWJhWLxEtjBiWS4W2eXoVMd') : 'CdOWJhWLxEtjBiWS4W2eXoVMd',
	'CONSUMER_SECRET'     => function_exists('env') ? env('TWITTER_CONSUMER_SECRET', 'eVvZWF0vjBnxnd8zyCtedqsVG6EiLP3BJhiXeOx3S3B2R68UgM') : 'eVvZWF0vjBnxnd8zyCtedqsVG6EiLP3BJhiXeOx3S3B2R68UgM',
	'ACCESS_TOKEN'        => function_exists('env') ? env('TWITTER_ACCESS_TOKEN', '8526422-cstZ0jYmxbU8cSBWgOR20HXK48bifru4A0QVa7JLho') : '8526422-cstZ0jYmxbU8cSBWgOR20HXK48bifru4A0QVa7JLho',
	'ACCESS_TOKEN_SECRET' => function_exists('env') ? env('TWITTER_ACCESS_TOKEN_SECRET', 'lz1RzT3J1OcI8EH1GwFRCSlc4b0vTXrXYxvu1R5ZvP77d') : 'lz1RzT3J1OcI8EH1GwFRCSlc4b0vTXrXYxvu1R5ZvP77d',
];
