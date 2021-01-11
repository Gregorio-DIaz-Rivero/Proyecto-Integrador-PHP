<!doctype html>
 <html lang="es">
 <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <meta name="description" content="">
     <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
     <meta name="generator" content="Jekyll v4.1.1">


     <!-- Bootstrap core CSS -->
     <link rel="stylesheet" href="css/bootstrap.min.css">
     <!-- Favicons -->


     <style>
         .bd-placeholder-img {
             font-size: 1.125rem;
             text-anchor: middle;
             -webkit-user-select: none;
             -moz-user-select: none;
             -ms-user-select: none;
             user-select: none;
         }

         @media (min-width: 768px) {
             .bd-placeholder-img-lg {
                 font-size: 3.5rem;
             }
         }

     </style>
     <!-- Custom styles for this template -->
 </head>
 <body>
 <nav class="navbar navbar-expand-md navbar-dark bg-dark ">
     <a class="navbar-brand" href="index.php?titulo=Home">Proyecto Integrador</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
     </button>

     <div class="collapse navbar-collapse" id="navbarsExampleDefault">
         <ul class="navbar-nav mr-auto">
             <li class="nav-item active">
                 <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="contacto.php">Contacto</a>
             </li>
             <li class="nav-item dropdown">
                 <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Productos</a>
                 <div class="dropdown-menu" aria-labelledby="dropdown01">
                     <a class="dropdown-item" href="productos-alta.php">Alta de Productos</a>
                     <a class="dropdown-item" href="alta-categoria.php">Alta de Categorias</a>
                     <a class="dropdown-item" href="alta-marca.php">Alta de Marca</a>
                     <a class="dropdown-item" href="productos-listado.php">Lista de Productos</a>
                     <a class="dropdown-item" href="marcas_listado.php">Lista de Marcas</a>
                     <a class="dropdown-item" href="categorias_listado.php">Lista de Categoria</a>
                 </div>
             </li>
             <?php
             session_start();
             if (!isset($_SESSION['usuario']))
             {
             ?>
                 <li class="nav-item">
                     <a class="nav-link" href="login.php?direccion=index.php">Iniciar Sesion</a>
                 </li>
             <?php
             } else {
             ?>
                 <li class="nav-item">
                     <a class="nav-link" href="salir.php">Salir</a>
                 </li>
             <?php
             }
             ?>
         </ul>
         <form class="form-inline my-2 my-lg-0">
             <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
             <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
         </form>
     </div>
 </nav>

 <main role="main" class="container">