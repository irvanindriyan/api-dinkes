<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Helpers\FunctionHelpers;
use App\Models\UserApi;

class ClientAccessUser
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (empty($request->header('User')) && empty($request->header('Token'))) {
            return response()->json(
                FunctionHelpers::resError('Authorization not found, request not allowed !'), 500);
        } else if (empty($request->header('User'))) {
            return response()->json(
                FunctionHelpers::resError('Authorization user not found, request not allowed !'), 500);
        } else if (empty($request->header('Token'))) {
            return response()->json(
                FunctionHelpers::resError('Authorization token not found, request not allowed !'), 500);
        } else {
            if (UserApi::validationToken($request->header('User'), $request->header('Token'))) {
                return $next($request);
            } else {
                return response()->json(
                    FunctionHelpers::resError('Authorization is invalid, access not allowed !'), 500);
            }
        }
    }
}
