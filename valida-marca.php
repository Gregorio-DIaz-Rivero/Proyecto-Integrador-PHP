<?php
$errores='';
if (isset($_POST['nombre'])) {
    $nombre = trim($_POST['nombre']);
}
if (isset($_POST['web'])) {
    $sitio_web = trim($_POST['web']);
}
if (isset($_POST['telefono'])) {
    $telefono = trim($_POST['telefono']);
}
if (isset($_POST['observaciones'])) {
    $observaciones = trim($_POST['observaciones']);
}


if ($nombre === '') {
    $errores = $errores . 'La marca debe tener un nombre. <br>';
} elseif (strlen($nombre) < 3) {
    $errores = $errores . 'El nombre de la marca no puede ser menor a 4 caracteres. <br>';
} elseif (strlen($nombre) > 35) {
    $errores = $errores . 'El nombre de la marca no debe contener 20 caracteres como máximo. <br>';
}
if ($sitio_web === '') {
    $errores = $errores . 'Tiene que existir un sitio web. <br>';
} elseif (strlen($nombre) > 2000) {
    $errores = $errores . 'El nombre debe contener 20 caracteres como máximo. <br>';
}

if ($telefono === '') {
    $errores = $errores . 'Debe existir un telefono. <br>';
} elseif (!is_numeric($telefono)) {
$errores= $errores . 'el telefono debe ser numerico <br>';
}
if (strlen($nombre) > 300) {
    $errores = $errores . 'Las observaciones deben ser cortas. <br>';
}