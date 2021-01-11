<?php
$errores='';
$iterar=0;
$arrcategoria[0]=0;
$arrmarca[0]=0;
if (isset($_POST['tamanocategoria'])) {
    for ($iterar=1;$iterar<$_POST['tamanocategoria'];$iterar++) {
        $arrcategoria[$iterar]= $_POST['categoria' . $iterar];
    }
}
if (isset($_POST['tamanomarca'])) {
    for ($iterar=1;$iterar<$_POST['tamanomarca'];$iterar++) {
        $arrmarca[$iterar]=$_POST['marca' . $iterar];
    }
}

if (isset($_POST['nombre'])) {
    $nombre = trim($_POST['nombre']);
}
if (isset($_POST['precio'])) {
    $precio = trim($_POST['precio']);
}
if (isset($_POST['stock'])) {
    $stock = trim($_POST['stock']);
}
if (isset($_POST['categoria'])) {
    $categoria = trim($_POST['categoria']);
}
if (isset($_POST['marca'])) {
    $marca = trim($_POST['marca']);
}
if (isset($_POST['garantia'])) {
    $garantia = trim($_POST['garantia']);
}
if (isset($_POST['envio'])) {
    $envio = trim($_POST['envio']);
}
if (isset($_POST['descripcion'])) {
    $descripcion = trim($_POST['descripcion']);
}
if ($nombre === '') {
    $errores=$errores . 'El nombre no puede estar vacío. <br>';
    $nombreerror='yes';
} elseif (strlen($nombre) < 4) {
    $errores=$errores . 'El nombre no puede ser menor a 4 caracteres. <br>';
    $nombreerror='yes';
}   elseif (strlen($nombre)>35){
        $errores=$errores . 'El nombre debe contener 20 caracteres como máximo. <br>';
        $nombreerror='yes';
}
if ($precio=='') {
    $errores=$errores . 'El precio no puede estar vacío. <br>';
    $precioerror='yes';
} elseif (!is_numeric($precio)) {
    $errores= $errores . 'El precio debe contener un valor numérico. <br>';
    $precioerror='yes';
} elseif ($precio<0) {
    $errores=$errores . 'El precio debe contener un valor positivo. <br>';
    $precioerror='yes';
}
if ($stock=='') {
    $errores=$errores . 'El stock no puede estar vacío. <br>';
    $stockerror='yes';
} elseif (!is_numeric($stock)) {
    $errores= $errores . 'El stock debe contener un valor numérico. <br>';
    $stockerror='yes';
} elseif ($stock<0) {
    $errores=$errores . 'El stock debe contener un valor positivo. <br>';
    $stockerror='yes';
}
else{
    $stock += 0;
    if (!is_int($stock)) {
        $errores=$errores . 'El stock debe contener un valor entero. <br>';
        $stockerror='yes';
    }
}
if ($categoria=='') {
    $errores = $errores . 'La categoría no puede estar vacía. <br>';
    $categoriaerror='yes';
} elseif (!in_array($categoria,$arrcategoria)) {
    $errores=$errores . 'El valor de la categoría no es válido. <br>';
    $categoria='yes';
}
if ($marca==null) {
    $errores = $errores . 'La marca no puede estar vacía. <br> ';
    $marcaerror='yes';
}elseif (!in_array($marca,$arrmarca)) {
    $errores=$errores . 'El valor de la marca no es válido. <br>';
    $marcaerror='yes';
}
if ($garantia==null) {
    $errores = $errores . 'La garantia no puede estar vacía. <br>';
    $garantiaerror='yes';
}

if ($envio!='on') {
    $errores = $errores . 'El valor de envío sin cargo no es válido. <br>';
    $envioerror='yes';
} else {
    $envio=1;
}

if ($descripcion=='') {
    $errores = $errores . 'La descripción no puede estar vacía. <br>';
    $descripcionerror='yes';
} elseif (strlen($descripcion)>500) {
    $errores = $errores . 'La descripción debe contener 500 caracteres como máximo. <br>';
    $descripcionerror='es';
}
