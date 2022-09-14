<?php
 class Mysql extends conexion 
 {
    private $conexion;
    private $strquery;
    private $arrValues;
    function __construct()
		{
			$this->conexion = new Conexion();
			$this->conexion = $this->conexion->conect();
		}
        public function insert(string $query, array $arryValues)
		{
            $this->strquery = $query;
            $this->arryValues=$arryValues;

        	$insert = $this->conexion->prepare($this->strquery);
        	$resInsert = $insert->execute($this->arryValues);
	        $idInsert = $this->conexion->lastInsertId();
	        if($resInsert)
            {
                $lastInsert = $this->conexion->lastInsertId();
            }else{
                $lastInsert =0;
            }
            return $lastInsert;
		}

        public function select(string $query)
		{
            $this->strquery = $query;
            $result = $this->conexion->prepare($this->strquery);
            $result->execute();
            $data = $result->fetch(PDO::FETCH_ASSOC);
            return $data;
			
		}

        public function selectAll(string $query)
		{
            $this->strquery = $query;
            $result = $this->conexion->prepare($this->strquery);
            $result->execute();
            $data = $result->fetchall(PDO::FETCH_ASSOC);
            return $data;
		}

        public function update(string $query, array $arrValues)
		{
            $this->strquery = $query;
            $this->arrVAlues = $arrValues;
			$update = $this->conexion->prepare($this->strquery);
			$resExecute = $update->execute($this->arrVAlues);
	        return $resExecute;
		}

        
		public function delete(string $query)
		{
            $this->strquery = $query;
	    	$result = $this->conexion->prepare($this->strquery);
			$del = $result->execute();
	        return $del;
        }

}
?>