<?php
require 'clases/Marca.php';
$elim=$_GET['eliminar'];
$marca_a_eliminar=new Marca();
$marca_a_eliminar->findById($elim);
$marca_a_eliminar->delete();
header('Location: marcas_listado.php');
