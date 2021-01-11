<?php
    include 'conexion.php';
    class Producto {
        public $id_producto;
        public $nombre;
        public $precio;
        public $stock;
        public $id_categoria;
        public $id_marca;
        public $garantia;
        public $envio_sin_cargo;
        public $nombre_foto;
        public $fecha_de_alta;
        public $descripcion;
        public $observaciones;
        public function __construct($propiesades= ["id"=>null,"nombre"=>'',"precio"=>null,"stock"=>null,"categoria"=>'',"marca"=>'',"garantia"=>'',"envio_sin_cargo"=>'',"nombre_foto"=>'',"fecha_de_alta"=>'',"descripcion"=>'',"observaciones"=>'']) {
            $this->id_producto=$propiesades['id'];
            $this->nombre=$propiesades['nombre'];
            $this->precio=$propiesades['precio'];
            $this->stock=$propiesades['stock'];
            $this->id_categoria=$propiesades['categoria'];
            $this->id_marca=$propiesades['marca'];
            $this->garantia=$propiesades['garantia'];
            $this->envio_sin_cargo=$propiesades['envio_sin_cargo'];
            $this->nombre_foto=$propiesades['nombre_foto'];
            $this->fecha_de_alta=$propiesades['fecha_de_alta'];
            $this->descripcion=$propiesades['descripcion'];
            $this->observaciones=$propiesades['observaciones'];
        }
        public function getInfoAbreviada () {
            return $parrafp='Nombre:' . $this->nombre . ', Marca: ' . $this->id_marca . ', Precio: ' .$this->precio;
        }
        public function insert() {

            $link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
            if (!$link) {
                die('No nos pudimos conectar a la base de datos');
            }
            $sql=<<<AREASQL
                INSERT INTO `productos`(`id_producto`, `nombre`, `precio`, `stock`, `id_categoria`, `id_marca`, `garantia`, `envio_sin_cargo`, `nombre_foto`, `fecha_de_alta`, `descripcion`, `observaciones`) VALUES (null ,'$this->nombre','$this->precio','$this->stock','$this->id_categoria','$this->id_marca','$this->garantia','$this->envio_sin_cargo','$this->nombre_foto','$this->fecha_de_alta','$this->descripcion','$this->observaciones')
            AREASQL;
            $rs=mysqli_query($link,$sql);
            mysqli_close($link);
            echo '<strong>Producto añadido.</strong><br>';
        }
        public function findById($id)
        {
            $link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
            if (!$link) {

                die('No nos pudimos conectar a la base de datos');
            }
            $sql = <<<AREASQL
                SELECT * FROM productos WHERE id_producto='$id'
            AREASQL;
            $rs = mysqli_query($link, $sql);
            mysqli_close($link);
            $columnas = mysqli_num_rows($rs);
            if ($columnas == 1) {
                $file = mysqli_fetch_assoc($rs);
                $this->id_producto = $file['id_producto'];
                $this->nombre = $file['nombre'];
                $this->precio = $file['precio'];
                $this->stock = $file['stock'];
                $this->id_categoria = $file['id_categoria'];
                $this->id_marca = $file['id_marca'];
                $this->garantia = $file['garantia'];
                $this->envio_sin_cargo = $file['envio_sin_cargo'];
                $this->nombre_foto = $file['nombre_foto'];
                $this->fecha_de_alta = $file['fecha_de_alta'];
                $this->descripcion = $file['descripcion'];
                $this->observaciones = $file['observaciones'];
            }else {
                    echo 'No se ha podido encontrar el producto';
            }
        }
        public function update() {
            $link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
            if (!$link) {
                die('No nos pudimos conectar a la base de datos');
            }
            $sql=<<<AREASQL
                UPDATE `productos` SET `id_producto`='$this->id_producto',`nombre`='$this->nombre',`precio`='$this->precio',`stock`='$this->stock',`id_categoria`='$this->id_categoria',`id_marca`='$this->id_marca',`garantia`='$this->garantia',`envio_sin_cargo`='$this->envio_sin_cargo',`nombre_foto`='$this->nombre_foto',`fecha_de_alta`='$this->fecha_de_alta',`descripcion`='$this->descripcion',`observaciones`='$this->observaciones' WHERE id_producto='$this->id_producto'
            AREASQL;
            $rs=mysqli_query($link,$sql);
            mysqli_close($link);
        }
        public function delete() {
            $link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
            if (!$link) {
                die('No nos pudimos conectar a la base de datos');
            }
            $sql=<<<AREASQL
                DELETE FROM `productos` WHERE id_producto='$this->id_producto'
            AREASQL;
            $rs=mysqli_query($link,$sql);
            mysqli_close($link);
        }

}