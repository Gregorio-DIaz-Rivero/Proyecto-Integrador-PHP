 <?php
 include 'clases/Producto.php';
 include "navbar.php";
 require_once 'funciones.php';

 $titulo='Alta de productos';
 if (!isset($_SESSION)){
     session_start();
 } elseif (!isset($_SESSION['usuario']))
 {
     header('Location: login.php?direccion=productos-alta.php');
     die();
 } else {
     global $nombre, $precio, $stock, $categoria, $marca, $garantia, $descripcion, $envio, $nombreerror, $precioerror, $stockerror, $categoriaerror, $marcaerror, $garantiaerror, $envioerror, $errores;
     $nombre = '';
     $precio = '';
     $stock = '';
     $categoria = '';
     $marca = '';
     $garantia = '';
     $envio = '';
     $descripcion = '';
     $nombreerror = '';
     $precioerror = '';
     $stockerror = '';
     $categoriaerror = '';
     $marcaerror = '';
     $garantiaerror = '';
     $envioerror = '';
     if ($_SERVER['REQUEST_METHOD'] === 'POST') {
         require 'validar.php';

         if ($errores !== '') {
             printAlert($errores, 'alert-danger');
         } else{
             $producto= new Producto(['id'=>null,'nombre'=>$nombre,'precio'=>$precio,'stock'=>$stock,'categoria'=>$categoria,'marca'=>$marca,'garantia'=>$garantia,'envio_sin_cargo'=>$envio,'nombre_foto'=>'Hp.jpg','fecha_de_alta'=>'20/12/2020','descripcion'=>$descripcion,'observaciones'=>'']);
         $producto->insert();
         echo 'Se cargo con exito el producto';
         }
     }

     echo '<h1 id="titulo">' . $titulo . '</h1>';
    require 'productos-alta-formulario.php';
    }
 include 'footer.php';