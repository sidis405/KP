<?php

Route::get('/', 'StaticController@index');

Route::get('{param}.html', 'StaticController@catch_all');

// Route::get('index.html', 'StaticController@index');
// Route::get('collection.html', 'StaticController@collection');
// Route::get('concept.html', 'StaticController@concept');
// Route::get('contact.html', 'StaticController@contact');
// Route::get('policy.html', 'StaticController@policy');