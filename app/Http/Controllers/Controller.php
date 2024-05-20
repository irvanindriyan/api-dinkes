<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Application;
use App\Helpers\FunctionHelpers;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index()
    {
        try {
            return response()->json(
                FunctionHelpers::resOk('API Version 1 Laravel ' . Application::VERSION . ' (PHP ' . PHP_VERSION . ')'), 
                200);
        } catch (Exception $e) {
            return response()->json(
                FunctionHelpers::resError($e->getMessage(), $e->getCode()), 
                $e->getCode() ?: 422);
        }
    }
}
