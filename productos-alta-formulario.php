<?php
    include 'optionmarca.php';
    include 'optioncategoria.php';

?>
<form action="" method="post" id="padre">
    <div class="form-row">
        <div class="form-group col"></div>
        <div class="form-group col" >

        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="form-group col-md-4">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" value="<?=$nombre ?>"  >
        </div>
        <div class="form-group col-md-2">
            <label for="precio">Precio</label>
            <input type="number" class="form-control" id="precio" name="precio" value="<?= $precio ?>">
        </div>
        <div class="form-group col-md-2">
            <label for="stock">Stock</label>
            <input type="number" class="form-control" id="stock" name="stock" value="<?= $stock ?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="form-group col-md-4">
            <label for="categoria">Categoria:</label>
            <select id="categoria" name="categoria" class="form-control" >
                <?php
                    optioncategoria();
                ?>
            </select>
        </div>
        <div class="form-group row-md-4">
            <label for="marca">Marca:</label>
            <select id="marca" name="marca" class="form-control">
                <?php
                    optionmarca();
                ?>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        Garantía: <br>
        <div class="form-group col-md-5">
            <input type="radio" id="garantia6meses" name="garantia" value="6"  <?php if($garantia === '6') {echo 'selected';} ?>>
            <label for="garantia6meses">6 meses</label>


            <input type="radio" id="garantia12meses" name="garantia" value="12"  <?php if($garantia === '12') {echo 'checked';} ?>>
            <label for="garantia12meses">12 meses</label>

            <input type="radio" id="garantia24meses" name="garantia" value="24"  <?php if($garantia === '24') {echo 'checked';} ?>>
            <label for="garantia24meses">24 meses</label>

            <input type="radio" id="garantia36meses" name="garantia" value="36"  <?php if($garantia === '36') {echo 'checked';} ?>>
            <label for="garantia36meses">36 meses</label>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="form-group col-md-6">
            <label for="envio">Envio: </label>
            <input type="checkbox" id="envio" name="envio" value="on" <?php if ($envio === 'on') {
                echo 'checked';
            } ?>>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="col-md-6">
            <label for="descripcion"></label>
            <textarea name="descripcion" id="descripcion"></textarea>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="form-group col-md-6">
            <button type="submit" class="btn btn-primary">Enviar</button>
            <button type="reset" class="btn btn-primary">Resetear</button>
        </div>
    </div>
    <script type="text/javascript" src="agregar_elemento.js"></script>
    <?php require 'marcar-errores.php'?>
</form>
