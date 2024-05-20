<?php

namespace App\Helpers;

use Illuminate\Database\Eloquent\Model;

class FunctionHelpers extends Model
{
    public static function responResult($data, $code) 
    {
        $result['code'] = $code;

        if ($code == '200') {
            $status = 'success';
        } else if ($code == '500') {
            $status = 'errors';
        } else {
            $status = 'warnings';
        }
        
        $result['status'] = $status;

        if (is_array($data)) {
            $result['data'] = $data;
        } else if (is_object($data)) {
            $result['data'] = $data;
        } else {
            if($data != '' || $data != null) {
                $result['message'] = $data; 
            }
        }

        return $result;
    }

    public static function resOK($data) 
    {
        return self::responResult($data, 200);
    }

    public static function resError($data, $code = 500) 
    {
        return self::responResult($data, $code);
    }

    public static function standarDate($date)
    {
        return date('Y-m-d H:i:s', strtotime($date));
    }

    public static function resErrorValidation($data) 
    {
        $arrError = $data->errors();

        $i = 0;
        foreach ($arrError as $key => $value) {
            if ($i == 0) {
                $message = $arrError[$key];
            }

            $i++;
        }

        return self::resError($message[0], $data->status);
    }

    public static function getClientIp()
    {
        $ipaddress = '';
        
        if (isset($_SERVER['HTTP_CLIENT_IP'])) {
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        } else if(isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else if(isset($_SERVER['HTTP_X_FORWARDED'])) {
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        } else if(isset($_SERVER['HTTP_FORWARDED_FOR'])) {
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        } else if(isset($_SERVER['HTTP_FORWARDED'])) {
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        } else if(isset($_SERVER['REMOTE_ADDR'])) {
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        } else {
            $ipaddress = 'UNKNOWN';
        }
        
        return $ipaddress;
    }

    public static function dateToEnglish($date)
    {
        $day = substr($date, 0, 2);
        $month = substr($date, 3, 2);
        $year = substr($date, 6, 4);
        
        return $year . '-' . $month . '-' . $day;
    }
}
