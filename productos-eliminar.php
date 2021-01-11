<?php
require 'clases/Producto.php';
$elim=$_GET['eliminar'];
$producto_a_eliminar=new Producto();
$producto_a_eliminar->findById($elim);
$producto_a_eliminar->delete();
header('Location: productos-listado.php');