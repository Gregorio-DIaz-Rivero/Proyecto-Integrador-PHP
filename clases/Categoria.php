<?php
    class Categoria {
        public $id_categoria;
        public  $nombre;
        public function __construct($categoria=['id'=>null,'nombre'=>'']) {
            $this->id_categoria=$categoria['id'];
            $this->nombre=$categoria['nombre'];
        }
        public function getInfoAbreviada () {
            return $parrafp='id categoria: ' . $this->id_categoria . ' Nombre: ' . $this->nombre;
        }
        public function insert() {
            $link=mysqli_connect('127.0.0.1','root','','digitalers');
            if (!$link) {
                die('No nos pudimos conectar a la base de datos');
            }
            $sql=<<<AREASQL
                INSERT INTO `categorias`(`id_categoria`, `nombre`) VALUES (null ,'$this->nombre')
            AREASQL;
            $rs=mysqli_query($link,$sql);
            mysqli_close($link);
        }
        public function findById($id) {
            $link=mysqli_connect('127.0.0.1','root','','digitalers');
            if (!$link) {
                die('No nos pudimos conectar a la base de datos');
            }
            $sql=<<<AREASQL
                    SELECT * FROM categorias WHERE id_categoria='$id'
                AREASQL;
            $rs=mysqli_query($link,$sql);
            mysqli_close($link);
            $columnas=mysqli_num_rows($rs);
            if ($columnas>=1) {
                $file=mysqli_fetch_assoc($rs);
                $this->id_categoria=$file['id_categoria'];
                $this->nombre=$file['nombre'];
                } else {
                echo 'No se ha podido encontrar la Categoria';
            }
        }
        public function update() {
            $link=mysqli_connect('127.0.0.1','root','','digitalers');
            if (!$link) {
                die('No nos pudimos conectar a la base de datos');
            }
            $sql=<<<AREASQL
               UPDATE `categorias` SET `nombre`='$this->nombre' WHERE id_categoria='$this->id_categoria'
            AREASQL;
            $rs=mysqli_query($link,$sql);
            mysqli_close($link);
        }
        public function delete() {
            $link=mysqli_connect('127.0.0.1','root','','digitalers');
            if (!$link) {
                die('No nos pudimos conectar a la base de datos');
            }
            $sql=<<<AREASQL
                DELETE FROM `categorias` WHERE 	id_categoria ='$this->id_categoria'
            AREASQL;
            $rs=mysqli_query($link,$sql);
            mysqli_close($link);
        }
    }