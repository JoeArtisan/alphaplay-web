<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DashController;
use Inertia\Inertia;

Route::get('/', [DashController::class, 'welcome'])->name('welcome');
Route::get('/data', [DashController::class, 'data'])->name('data');

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/dashboard', [DashController::class, 'dashboard'])->name('dashboard');
    Route::resource('users', UserController::class);
});