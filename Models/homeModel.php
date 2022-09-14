<?php
 class homeModel extends Mysql
 {
    public function __construct()
    {
      parent::__construct();
    } 
    public function setUser(string $nombre,  int $edad)
    {
        $query_insert  = "INSERT INTO usuario(nombres,edad) VALUES(?,?)";
        $arrData = array($nombre, $edad);
        $request_insert = $this->insert($query_insert,$arrData);
        return $request_insert;
    }

    public function getUser(string $id)
    {
        $sql ="SELECT * FROM usuario WHERE id = $id";
        $request = $this->select($sql);
        return $request;
    }

    public function updateUser(int $id, string $nombre, int $edad)
    {
        $sql ="UPDATE usuario SET nombres =?, edad =? WHERE id =$id";
        $arrData = array($nombre, $edad);
        $request = $this->update($sql, $arrData);
        return $request;
    }

    public function getUsers()
    {
        $sql = "SELECT * FROM usuario";
        $request = $this->selectAll($sql);
        return $request; 
    }

    public function delUser($id)
    {
        $sql = "DELETE FROM usuario WHERE id = $id";
        $request = $this->delete($sql);
        return $request; 
    }
}
?>