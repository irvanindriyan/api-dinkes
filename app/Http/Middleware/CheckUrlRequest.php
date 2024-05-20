<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Helpers\FunctionHelpers;
use App\Models\History\HistoryLogin;
use Auth;
use Route;
use Log;

class CheckUrlRequest
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
        if (preg_match_all('/renprogbms|binamarga/', strtolower($request->fullUrl()))) {
            return abort(404);
        } else {
            return $next($request);
        }
    }
}