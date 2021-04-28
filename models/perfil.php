<?php
require_once 'usuario.php';
class PerfilModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function update($datos){
        // actualizar datos en la BD
        $query = $this->db->connect()->prepare('call UpdateUsuario(:Cedula, 
            :FechaNacimiento,:Telefono,:Correo,:Contrasena);');
        try{
            $query->execute(['Cedula' => $datos['Cedula'], 
            'FechaNacimiento' => $datos['FechaNacimiento'], 'Telefono' => $datos['Telefono'],
            'Correo' => $datos['Correo'], 'Contrasena' => $datos['Contrasena']]);
            return true;
        }catch(PDOException $e){
            return false;
            //echo $e;
        }
        
    }
}

?>