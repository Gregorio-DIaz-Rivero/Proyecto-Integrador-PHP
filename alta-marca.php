<?php
include 'clases/Marca.php';
include "navbar.php";
require_once 'funciones.php';
if (!isset($_SESSION['usuario']))
{
    header('Location: login.php?direccion=alta-marca.php');
    die();
} else {
        global $errores, $nombre, $sitio_web, $telefono, $observaciones;
        $errores = '';
        $nombre = '';
        $sitio_web = '';
        $telefono = null;
        $observaciones = '';
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require 'valida-marca.php';
        if ($errores=='') {
            $marca= new Marca(['id'=>null,'nombre'=>$nombre,'sitio_web'=>$sitio_web,'telefono'=>$telefono,'observaciones'=>$observaciones]);
            $marca->insert();
            echo 'Se cargo con exito la Marca';
        }
        else {
            printAlert($errores, 'alert-danger');
        }
    }
    require 'alta-marca-formulario.php';
}
include 'footer.php';