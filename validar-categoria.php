<?php
$errores='';
if (isset($_POST['name'])) {
    $nombre = trim($_POST['name']);
}
if ($nombre === '') {
    $errores = $errores . 'El nombre no puede estar vacío. <br>';
} elseif (strlen($nombre) < 4) {
    $errores = $errores . 'El nombre no puede ser menor a 4 caracteres. <br>';
} elseif (strlen($nombre) > 35) {
    $errores = $errores . 'El nombre debe contener 20 caracteres como máximo. <br>';
}