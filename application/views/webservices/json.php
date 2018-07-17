<?php

defined('BASEPATH') OR exit('No direct script access allowed');
header('Content-type: application/json');
header('charset="utf-8"');
// Encode data
if (isset($response)) {
    echo json_encode($response, JSON_PRETTY_PRINT | JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);
     /*
      $object = (object) array_filter((array) $response);
      echo json_encode($object, JSON_PRETTY_PRINT | JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);
     */
} else {
    echo json_encode(array(
        'error' => true,
        'status' => '2',
        'message' => 'Error getting JSON data'
    ));
}