<?php

?>
<form action="modificar-producto.php" method="post" id="padre">
    <div class="form-row">
        <div class="form-group col"></div>
        <div class="form-group col" >

        </div>
    </div>
    <input type="hidden" name="modificar" value="<?= $id_producto ?>">
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
            <label for="categoria">State</label>
            <select id="categoria" name="categoria" class="form-control" >
                <option value=""> Seleccioná una categoría</option>
                <option value="1" <?php if($categoria === '1') {echo 'selected';} ?>> Celulares </option>
                <option value="2" <?php if ($categoria==='2'){echo 'selected';} ?> > Consolas</option>
                <option value="3" <?php if ($categoria==='3'){echo 'selected';} ?> > Lavarropas</option>
                <option value="4" <?php if ($categoria==='4'){echo 'selected';} ?> > Lavasecarropas</option>
                <option value="5" <?php if ($categoria==='5'){echo 'selected';} ?> > Secarropas</option>
                <option value="6" <?php if ($categoria==='6'){echo 'selected';} ?> > Televisores</option>
            </select>
        </div>
        <div class="form-group row-md-4">
            <label for="marca">State</label>
            <select id="marca" name="marca" class="form-control">
                <option value=""> Seleccioná una marca</option>
                <option value="1" <?php if($marca === '1') {echo 'selected';} ?>> Apple</option>
                <option value="2" <?php if($marca === '2') {echo 'selected';} ?>> DJI</option>
                <option value="3" <?php if($marca === '3') {echo 'selected';} ?>> LG</option>
                <option value="4" <?php if($marca === '4') {echo 'selected';} ?>> Philips</option>
                <option value="5" <?php if($marca === '5') {echo 'selected';} ?>> Sony</option>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        Garantía: <br>
        <div class="form-group col-md-5">
            <input type="radio" id="garantia6meses" name="garantia" value=6  <?php if($garantia == 6) {echo 'selected';} ?>>
            <label for="garantia6meses">6 meses</label>


            <input type="radio" id="garantia12meses" name="garantia" value=12  <?php if($garantia == 12) {echo 'checked';} ?>>
            <label for="garantia12meses">12 meses</label>

            <input type="radio" id="garantia24meses" name="garantia" value=24  <?php if($garantia == 24) {echo 'checked';} ?>>
            <label for="garantia24meses">24 meses</label>

            <input type="radio" id="garantia36meses" name="garantia" value=36  <?php if($garantia == 36) {echo 'checked';} ?>>
            <label for="garantia36meses">36 meses</label>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="form-group col-md-6">
            <label for="envio">Envio: </label>
            <input type="checkbox" id="envio" name="envio" value="on" <?php if ($envio == 1 ) {
                echo 'checked';
            } ?>>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="col-md-6">
            <label for="descripcion"></label>
            <textarea name="descripcion" id="descripcion" ><?= $descripcion ?></textarea>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="form-group col-md-6">
            <button type="submit" class="btn btn-primary">Enviar</button>
            <a href="productos-listado.php" class="btn btn-dark">Cancelar</a>
        </div>
    </div>
    <script type="text/javascript" src="agregar_elemento.js"></script>
    <?php require 'marcar-errores.php'?>
</form>
