<?php
    class Roles extends Controllers{
        public function __construct()
        {
            parent::__construct();

        }

        public function Roles()
        {
            $data['page_id'] = 3;
            $data['tag_page'] = "Roles Usuario"; //Se coloca el nombre de la pestaña
            $data['page_name'] = "rol_usuario";
            $data['page_title'] = " Roles usuario  <small> SUTEC3D</small>"; // NOmbre de la pagian de abajo
            $this->views->getView($this, "roles", $data); // se coloca el nombre de la vista
        }

        public function getRoles()
        {
            $arrData = $this->model->selectRoles();

            for ($i=0; $i < count($arrData); $i++) { 
                
                if ($arrData[$i]['status'] == 1) 
                {
                    $arrData[$i]['status'] = '<span class="badge badge-success">Activo</span>'; //Muestra el Status ACTIVO de roles

                } else{

                    $arrData[$i]['status'] = '<span class="badge badge-danger">Inactivo</span>'; //Muestra el Status INACACTIVO 
                }


                //Muestra la columna de Actions y Su (options)
            
                $arrData[$i]['options'] = '<div class="text-center">
            
                <button class="btn btn-secondary" btn-sm btnPermisosRol rl="'.$arrData[$i]['idrol'].'" title="Persmisos"><i class="fas fa-key"></i></button>

                <button class="btn btn-primary" btn-sm btnEditRol rl="'.$arrData[$i]['idrol'].'" title="Editar"><i class="fas fa-pencil-alt"></i></button>

                <button class="btn btn-danger" btn-sm btnDelRol rl="'.$arrData[$i]['idrol'].'" title="Eliminar"><i class="far fa-trash-alt"></i></button> 

                </div>';
            /*    
            https://jsonformatter.curiousconcept.com/ - Validar los formatos JASON
            */

                
            }

                // dep($arrData[0]['status']);exit; // el 0 es la posicion donde muestra el status


            echo json_encode($arrData, JSON_UNESCAPED_UNICODE);
            die();
        }
    }

?>