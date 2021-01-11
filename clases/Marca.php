<?php
    class Marca {
        public $id_marca;
        public $nombre;
        public $sitio_web;
        public $telefono;
        public $observaciones;
        public function __construct($marca=['id'=>null,'nombre'=>'','sitio_web'=>'','telefono'=>null,'observaciones'=>'']) {
            $this->id_marca=$marca['id'];
            $this->nombre=$marca['nombre'];
            $this->sitio_web=$marca['sitio_web'];
            $this->telefono=$marca['telefono'];
            $this->observaciones=$marca['observaciones'];
        }
        public function getInfoAbreviada () {
            echo 'id marca: ' . $this->id_marca . ' Nombre: ' . $this->nombre . ' Sitio web: ' . $this->sitio_web . ' Telefono ' . $this->telefono . ' Observaciones ' . $this->observaciones;
        }
        public function insert() {
            $link=mysqli_connect('127.0.0.1','root','','digitalers');
            if (!$link) {
                die('No nos pudimos conectar a la base de datos');
            }
            $sql=<<<AREASQL
                INSERT INTO `marcas`(`id_marca`, `nombre`, `sitio_web`, `telefono`, `observaciones`) VALUES (null ,'$this->nombre','$this->sitio_web','$this->telefono','$this->observaciones')
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
                SELECT * FROM marcas WHERE id_marca='$id'
            AREASQL;
            $rs=mysqli_query($link,$sql);
            mysqli_close($link);
            $columnas=mysqli_num_rows($rs);
            if ($columnas==1) {
                $file=mysqli_fetch_assoc($rs);
                $this->id_marca=$file['id_marca'];
                $this->nombre=$file['nombre'];
                $this->sitio_web=$file['sitio_web'];
                $this->telefono=$file['telefono'];
                $this->observaciones=$file['observaciones'];
            } else {
                echo 'No se ha podido encontrar la marca';
            }
        }
        public function update() {
            $link=mysqli_connect('127.0.0.1','root','','digitalers');
            if (!$link) {
                die('No nos pudimos conectar a la base de datos');
            }
            $sql=<<<AREASQL
                UPDATE `marcas` SET `id_marca`='$this->id_marca',`nombre`='$this->nombre',`sitio_web`='$this->sitio_web',`telefono`='$this->telefono',`observaciones`='$this->observaciones' WHERE 	id_marca ='$this->id_marca'
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
                DELETE FROM `marcas` WHERE 	id_marca ='$this->id_marca'
            AREASQL;
            $rs=mysqli_query($link,$sql);
            mysqli_close($link);
        }
    }