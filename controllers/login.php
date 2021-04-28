<?php
class Login extends Controller{
    function __construct()
    {
        parent::__construct();
        $this->view->mensaje = "";
    }
    function render(){
        $this->view->render('usuarios/index');
    }
    function validar(){
        $this->view->render('usuarios/perfil');
    }
  }
?>