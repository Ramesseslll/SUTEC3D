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

        
    }

?>