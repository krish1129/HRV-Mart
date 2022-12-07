<?php

function isJSON($string)
{
    if (is_string($string) && is_array(json_decode($string, true)) && (json_last_error() == JSON_ERROR_NONE)) {
        return true;
    } else {
        return false;
    }
}
