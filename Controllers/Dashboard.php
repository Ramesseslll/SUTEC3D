<?php
    class Dashboard extends Controllers{
        public function __construct()
        {
            parent::__construct();

        }

        public function dashboard()
        {
            $data['page_id'] = "2";
            $data['tag_page'] = "Dashboard - Tienda Virtual Sutec3d"; //Se coloca el nombre de la pestaña
            $data['page_title'] = "Dashboard - Tienda Virtual";
            $data['page_name'] = "dashboard";
            $this->views->getView($this, "dashboard", $data); // se coloca el nombre de la vista
        }

        
    }

?>