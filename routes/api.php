<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::get('/api', [App\Http\Controllers\Controller::class, 'index']);

Route::group(['middleware' => ['only.json', 'throttle:900000000,1']], function() {
    
});

Route::group(['middleware' => ['access.cors', 'throttle:900000000,1']], function() {
    Route::get('/hospitals', [App\Http\Controllers\HospitalsController::class, 'getDataHospitals'])
        ->name('hospitals');
    Route::get('/connected_hospitals', [App\Http\Controllers\ConnectedHospitalsController::class, 'getDataConnectedHospitals'])
        ->name('connected_hospitals');
    Route::get('/hospital_transactions', [App\Http\Controllers\HospitalTransactionsController::class, 'getDataHospitalTransactions'])
        ->name('hospital_transactions');

    Route::get('/connected_hospital_details', [App\Http\Controllers\ConnectedHospitalDetailsController::class, 'getDataConnectedHospitalDetails'])
        ->name('connected_hospital_details');
    Route::get('/hospital_transaction_details', [App\Http\Controllers\HospitalTransactionDetailsController::class, 'getDataHospitalTransactionDetails'])
        ->name('hospital_transaction_details');
});