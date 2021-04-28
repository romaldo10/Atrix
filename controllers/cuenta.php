<?php
class Cuenta extends Controller{
    function __construct()
    {
        parent::__construct();
        $this->view->mensaje = "";
    }
    function render(){
        $this->view->render('usuarios/cuenta');
    }
    function registrarCuenta(){
         $Cedula = isset($_POST['Cedula']) ? $_POST['Cedula']: null; 
         $Nombre = isset($_POST['Nombre']) ? $_POST['Nombre']: null;
         $FechaNacimiento = isset($_POST['FechaNacimiento']) ? $_POST['FechaNacimiento']: null;
         $Telefono = isset($_POST['Telefono']) ? $_POST['Telefono']: null; 
         $Correo = isset($_POST['Correo']) ? $_POST['Correo']: null; 
         $Contrasena = isset($_POST['Contrasena']) ? $_POST['Contrasena']: null; 
         $mensaje = "";
       if($this->model->insert(['Cedula' => $Cedula,'Nombre' => $Nombre,'FechaNacimiento' => $FechaNacimiento,
          'Telefono' => $Telefono,'Correo' => $Correo,'Contrasena' => $Contrasena])){
          $mensaje =   "Hola ".$Nombre." si gustas puedes iniciar sesión!!";
          $this->view->mensaje = $mensaje;
          $this->view->render('usuarios/index');
        }else{
          $mensaje =  "Lo sentimos .$Nombre. ya existe una cuenta con los datos que suminitró";
          $this->view->mensaje = $mensaje;
          $this->view->render('usuarios/cuenta');
       }  
    }
}
?>