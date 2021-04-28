<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<?php echo constant('URL'); ?>public/css/default.css">
</head>
<header id="hMenu">
<section>
    <article class="aMenu">
        <ul>
            <input type="checkbox" id="ckmenu">
            <label class="btnmenu" for="ckmenu"></label>
            <li class="liIten0"><a href='<?php echo constant('URL'); ?>'><b>Sabores exóticos</b></a></li>
            <li class="liItenU"><a href='<?php echo constant('URL'); ?>login'>.</a></li>
            <li class="liIten1 mm"><a href='<?php echo constant('URL'); ?>'> <img src="<?php echo constant('URL'); ?>public/img/logo.svg" alt=""></a></li>
            <li class="liIten2 mm"><a href='<?php echo constant('URL'); ?>servicioReservacion'>Nuestros servicios</a></li>
            <li class="liIten3 mm"><a href='<?php echo constant('URL'); ?>calendario'>Calendario de actividades</a></li>
            <li class="liIten4 mm"><a href='<?php echo constant('URL'); ?>login'><b>Iniciar sesión</b></a></li>
            <li class="liIten5 mm"><a href='<?php echo constant('URL'); ?>ayuda'>Consultas y preguntas frecuentes</a></li>
            <li class="liIten6 mm"><input type="text" name="" placeholder="Buscar en la página"  class="inpBuscar"><a href="#buscarP"></a><img class="btnBuscar" src="<?php echo constant('URL'); ?>public/img/buscar.svg" alt="" ></a></li>
        </ul>
    </article>
 </section>
</header>