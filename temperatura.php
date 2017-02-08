<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);

//REF: http://www.redbeanphp.com/index.php
require_once('lib/rb.php');
R::setup('mysql:host=127.0.0.1;dbname=pa', 'pa', 'pressione');
$error = "";
$table = 'temperatura';
$record = (empty($_REQUEST['id'])) ? R::dispense($table) : R::load($table, intval($_REQUEST['id']));
try {
    if ($record && !empty($_REQUEST['act']) && $_REQUEST['act'] == 'del')
        R::trash($record);
    $new = json_decode(file_get_contents('php://input'), true);
    if (!empty($new)) {

        if ($new["valore"] < 30) {
            $error .= " errore perche e' troppo bassa e sei morto...AHAH";
        } else if ($new["valore"] > 42) {
            $error .= " errore perche e' troppo alta e sei morto...AHAH";
        }
        


        if (!$error) {
            foreach ($new as $k => $v) {
                $record[$k] = $v;
            }
            R::store($record);
        }
    }
} catch (RedBeanPHP\RedException\SQL $e) {
    
}
$pa = R::find($table);
$result = ["error" => $error, "list" => $pa];
//die(print_r($result,1));
$json = json_encode($result, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_NUMERIC_CHECK);
//die(print_r($json, 1) );
die($json);
?>
