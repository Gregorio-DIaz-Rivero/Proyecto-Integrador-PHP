<?php

function printAlert($alertText, $alertClass) {
    ?>
    <div class="alert <?= $alertClass ?> alert-dismissible fade show" role="alert">
        <?= $alertText ?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <?php
}