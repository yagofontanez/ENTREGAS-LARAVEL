<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
});

Route::get('/blank', function() {
    return view('blank');
})->name('blank');

Route::get('/chamada', function() {
    return view('chamada');
})->name('chamada');

Route::get('/buttons', function() {
    return view('buttons');
})->name('buttons');

Route::get('/cards', function() {
    return view('cards');
})->name('cards');

Route::get('/charts', function() {
    return view('charts');
})->name('charts');

Route::get('/index', function() {
    return view('index');
})->name('index');

Route::get('/error', function() {
    return view('404');
})->name('error');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


require __DIR__.'/auth.php';
