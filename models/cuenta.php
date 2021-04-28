<?php

class CuentaModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function insert($datos){
        // insertar datos en la BD
        $query = $this->db->connect()->prepare('call InsertUsuario(:Cedula, :Nombre,
            :FechaNacimiento,:Telefono,:Correo,:Contrasena);');
        try{
            
            $query->execute(['Cedula' => $datos['Cedula'], 'Nombre' => $datos['Nombre'],
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