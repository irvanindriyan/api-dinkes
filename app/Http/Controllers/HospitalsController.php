<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\FunctionHelpers;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\ClientException;
use App\Models\Hospital;
use Log;

class HospitalsController extends Controller
{
    protected $guzzle;

    public function __construct(Request $request)
    {
        $this->guzzle = new Client();
    }

    public function getDataHospitals(Request $request)
    {
        try {
            $getHospitals = $this->guzzle->request(
                'GET', 
                'https://dinkes.jakarta.go.id/apps/jp-2024/all-rsud.json', [
                    'headers' => [
                        'Accept' => 'application/json',
                    ]
                ]);

            $resulHospitals = $getHospitals->getBody();
            $dataHospitals = json_decode($resulHospitals);

            foreach ($dataHospitals as $hospital) {
                $checkHospital = Hospital::query()
                    ->where('organisasi_id', $hospital->organisasi_id);

                if (empty($checkHospital->count())) {
                    $Hospital = Hospital::insert((array) $hospital);
                }
            }

            return response()->json(
                FunctionHelpers::resOK($dataHospitals), 200);
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
