<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

//Route::get('/classes','ClassController@index');
// Route::get('/students/{id}','ClassController@classAndStudents');
// Route::post('/classes','ClassController@store');
// Route::post('/student','StudentController@store');
// Route::post('/students','ClassController@createStudents');

Route::post('/login', 'UserController@login');
Route::post('/register', 'UserController@register');


Route::group(['middleware' => 'auth:api'], function(){
    Route::get('/classes','ClassController@index');
    Route::get('/students/{id}','ClassController@classAndStudents');
    Route::post('/classes','ClassController@store');
    //Route::post('/student','StudentController@store');
    Route::post('/students','ClassController@createStudents');   
});