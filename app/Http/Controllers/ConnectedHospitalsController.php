<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\FunctionHelpers;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\ClientException;
use App\Models\ConnectedHospital;
use Log;

class ConnectedHospitalsController extends Controller
{
    protected $guzzle;

    public function __construct(Request $request)
    {
        $this->guzzle = new Client();
    }

    public function getDataConnectedHospitals(Request $request)
    {
        try {
            $getConnectedHospitals = $this->guzzle->request(
                'GET', 
                'https://dinkes.jakarta.go.id/apps/jp-2024/all-rs-terkoneksi.json', [
                    'headers' => [
                        'Accept' => 'application/json',
                    ]
                ]);

            $resulConnectedHospitals = $getConnectedHospitals->getBody();
            $dataConnectedHospitals = json_decode($resulConnectedHospitals);

            foreach ($dataConnectedHospitals as $keyConnectedHospital => $connectedHospital) {
                $checkConnectedHospital = ConnectedHospital::query()
                    ->where('organisasi_id', $connectedHospital->organisasi_id);

                if (empty($checkConnectedHospital->count())) {
                    $ConnectedHospital = ConnectedHospital::insert((array) $connectedHospital);
                }
            }

            return response()->json(
                FunctionHelpers::resOK($dataConnectedHospitals), 200);
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
