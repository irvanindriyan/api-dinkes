<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\FunctionHelpers;
use App\Models\ConnectedHospital;
use Log;

class ConnectedHospitalDetailsController extends Controller
{
    public function __construct(Request $request)
    {

    }

    public function getDataConnectedHospitalDetails(Request $request)
    {
        try {
            $getDataConnectedHospitalDetails = ConnectedHospital::select(
                    'connected_hospitals.nama',
                    'connected_hospitals.organisasi_id',
                    'hospitals.kelas_rs',
                    'connected_hospitals.status',
                    'connected_hospitals.alamat',
                    'hospitals.kota_kab',
                    'hospitals.email'
                )
                ->leftJoin('hospitals', 'hospitals.organisasi_id', 'connected_hospitals.organisasi_id');
            $dataConnectedHospitalDetails = $getDataConnectedHospitalDetails->get();

            return response()->json(
                FunctionHelpers::resOK($dataConnectedHospitalDetails), 200);
        } catch (\GuzzleHttp\Exception\ClientException $e) {
            return response()->json(
                FunctionHelpers::resError($e->getMessage(), $e->getCode()), 
                $e->getCode() ?: 422);
        } catch (Exception $e) {
            return response()->json(
                FunctionHelpers::resError($e->getMessage(), $e->getCode()), 
                $e->getCode() ?: 422);
        }
    }
}
