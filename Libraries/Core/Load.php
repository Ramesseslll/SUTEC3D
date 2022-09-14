<?php

//Linea para convertir la primera letra de los controladores en mayuscula
$controller = ucwords($controller);
//Load
$controllerfile= "Controllers/" .$controller. ".php";
 
if(file_exists($controllerfile))
{
    require_once($controllerfile);
    $controller = new $controller();
    if(method_exists($controller, $method))
{
    $controller->{$method}($params);
}  else{
    require_once("Controllers/Error.php");
}
} else  {
    require_once("Controllers/Error.php");
}

/*
echo "<br>";
echo "controlador: ".$controller;
echo "<br>";
echo " Metodo: " .$method;
echo "<br>";
echo " parametros: " .$params;
*/
?>