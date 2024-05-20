<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\FunctionHelpers;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\ClientException;
use App\Models\HospitalTransaction;
use Log;

class HospitalTransactionsController extends Controller
{
    protected $guzzle;

    public function __construct(Request $request)
    {
        $this->guzzle = new Client();
    }

    public function getDataHospitalTransactions(Request $request)
    {
        try {
            $getHospitalTransactions = $this->guzzle->request(
                'GET', 
                'https://dinkes.jakarta.go.id/apps/jp-2024/transaksi-data-satusehat.json', [
                    'headers' => [
                        'Accept' => 'application/json',
                    ]
                ]);

            $resulHospitalTransactions = $getHospitalTransactions->getBody();
            $dataHospitalTransactions = json_decode($resulHospitalTransactions);

            foreach ($dataHospitalTransactions as $hospitalTransaction) {
                $checkHospitalTransaction = HospitalTransaction::query()
                    ->where('organisasi_id', $hospitalTransaction->organisasi_id);

                if (empty($checkHospitalTransaction->count())) {
                    unset($hospitalTransaction->nama);

                    $hospitalTransaction->transaction_date = FunctionHelpers::dateToEnglish($hospitalTransaction->transaction_date);

                    $HospitalTransaction = HospitalTransaction::insert((array) $hospitalTransaction);
                }
            }

            return response()->json(
                FunctionHelpers::resOK($dataHospitalTransactions), 200);
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
