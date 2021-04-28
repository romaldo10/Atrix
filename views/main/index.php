<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?php echo constant('URL'); ?>public/css/default.css">
    <title>index</title>
</head>
<body>
    <section>
        <p></p>
        <article class="arFormularios">
            <h3>Bienvenido!</h3>
            <p>Por favor inicie sesión con los datos que se solicitan a contiuación</p>
            <form action="">
                <p>Correo eletrónico</p>
                <input type="mail" name="Correo">
                <p>Contraseña</p>
                <input type="password" name="Contrasena"><br>
             
            </form>
            <aside class="asBotones">
                <input type="button" value="Iniciar sesión">
                <a href="">Registrarme</a>
                <a href="">Olvidé mi contraseña</a>
            </aside>
</article>
    </section>
</body>
</html>