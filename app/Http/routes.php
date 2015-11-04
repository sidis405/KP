<?php

Route::get('/', 'StaticController@index');


Route::get('press.html', '\KP\Http\Controllers\PressController@index');
Route::get('gallery.html', '\KP\Http\Controllers\GalleryController@index');

Route::get('{param}.html', 'StaticController@catch_all');


// Route::get('index.html', 'StaticController@index');
// Route::get('collection.html', 'StaticController@collection');
// Route::get('concept.html', 'StaticController@concept');
// Route::get('contact.html', 'StaticController@contact');
// Route::get('policy.html', 'StaticController@policy');

// Authentication routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');


// // Registration routes...
Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');



Route::get('image/{path}', function (League\Glide\Server $server, Illuminate\Http\Request $request, $path) {

    // dd($request);
    // dd(public_path());

    $server->outputImage($request);

})->where('path', '.+');

Route::group(array('prefix' => 'admin', 'middleware' => 'auth'), function () {

    Route::post('model/upload_image', '\KP\Http\Controllers\Admin\ImagesController@store');
    Route::post('model/get_images', '\KP\Http\Controllers\Admin\ImagesController@index');

    Route::post('model/upload_attachment', 'Admin\AttachmentsController@store');

    Route::get('/', function(){
        return redirect()->to('admin/gallery');
    });

    #   Gallery ROUTES

    Route::get('gallery', [
        'as'    => 'admin_gallery',
        'uses'  => '\KP\Http\Controllers\Admin\GalleryController@index'
        ]);

    Route::get('gallery/create', [
        'as'    => 'admin_create_gallery',
        'uses'  => '\KP\Http\Controllers\Admin\GalleryController@create'
        ]);

    Route::post('gallery', [
        'as'    => 'admin_store_gallery',
        'uses'  => '\KP\Http\Controllers\Admin\GalleryController@store'
        ]);

    Route::get('gallery/{id}/edit', [
        'as'    => 'admin_edit_gallery',
        'uses'  => '\KP\Http\Controllers\Admin\GalleryController@edit'
        ]);

    Route::post('gallery/{id}', [
        'as'    => 'admin_store_gallery',
        'uses'  => '\KP\Http\Controllers\Admin\GalleryController@update'
        ]);

    Route::post('gallery/{id}/remove', [
        'as'    => 'admin_delete_gallery',
        'uses'  => '\KP\Http\Controllers\Admin\GalleryController@destroy'
        ]);

    Route::delete('gallery/{id}/delete_image', [
        'as'    => 'admin_delete_gallery',
        'uses'  => '\KP\Http\Controllers\Admin\GalleryController@destroyImage'
        ]);

    #   Press ROUTES

    Route::get('press', [
        'as'    => 'admin_press',
        'uses'  => '\KP\Http\Controllers\Admin\PressController@index'
        ]);

    Route::get('press/create', [
        'as'    => 'admin_create_press',
        'uses'  => '\KP\Http\Controllers\Admin\PressController@create'
        ]);

    Route::post('press', [
        'as'    => 'admin_store_press',
        'uses'  => '\KP\Http\Controllers\Admin\PressController@store'
        ]);

    Route::get('press/{id}/edit', [
        'as'    => 'admin_edit_press',
        'uses'  => '\KP\Http\Controllers\Admin\PressController@edit'
        ]);

    Route::post('press/{id}', [
        'as'    => 'admin_store_press',
        'uses'  => '\KP\Http\Controllers\Admin\PressController@update'
        ]);

    Route::post('press/{id}/remove', [
        'as'    => 'admin_delete_press',
        'uses'  => '\KP\Http\Controllers\Admin\PressController@destroy'
        ]);

    Route::delete('press/{id}/delete_image', [
        'as'    => 'admin_delete_press',
        'uses'  => '\KP\Http\Controllers\Admin\PressController@destroyImage'
        ]);

});