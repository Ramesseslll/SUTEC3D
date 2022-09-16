<?php
    class Roles extends Controllers{
        public function __construct()
        {
            parent::__construct();

        }

        public function Roles()
        {
            $data['page_id'] = 3;
            $data['page_tag'] = "Roles usuario";
            $data['page_name'] = "rol_usuario";
            $data['page_title'] = "Roles usuario  <small> SUTEC3D</small>";
            $this->views->getView($this, "roles", $data); // se coloca el nombre de la vista
        }

        
    }

?>