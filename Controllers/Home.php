<?php
    class Home extends Controllers
    {
        public function __construct()
        {
            parent::__construct();

        }
        public function home()
        {
            $data['page_id'] = "1";
            $data['tag_page'] = "Home";
            $data['page_title'] = "Pagina principal";
            $data['page_name'] = "home";
            $data['page_content'] = "loekfmkjsnvkjdfnvkmsZNkjfnj mnvfjdfnvkndzknvjnnjnc  jnvdfjznv
            kmfvjkndfkjavn nmjfdnmbvijdsfnvkj jnvjkgndfkjvnsx njnjifnijsnijmA NNJIVNFSDVIJN   HJINFDVJXCNANVKMSDNB HFNM JNGJFS+
            MVJDNGIJXMCND HJDNFKJASnKCN NM JNFJASNDFMF NM";
           $this->views->getView($this, "home", $data);
        }

        public function insertar()
        {   $data = $this->model->setUser("Andres",14);
            $data = $this->model->setUser("Elvis",30);
            print_r($data);
        }

        public function verusuario($id)
        {
            $data = $this->model->getUser($id);
            print_r($data);
        }

        public function actualizar($id)
        {
            $data = $this->model->updateUser(1,"roberto",20);
            print_r($data);
        }

        public function verusuarios()
    {
       $data = $this->model->getUsers();
       print_r($data);
    }

    public function EliminarUsuario($id)
    {
       $data = $this->model->delUser($id);
       print_r($data);
    }
        
        
    }

?>