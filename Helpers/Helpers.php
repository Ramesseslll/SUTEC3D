<?php
 
function base_url()
{
    
    return BASE_URL; 
}
//Funcion para jalar el contenido de la url de la carpeta Assets                                          
function media(){
   return BASE_URL. "/Assets";
}


//Funcion para debuguear-muestra informacion formateada
function dep($data)
{
    
   $format = print_r('<pre>'); 
   $format = print_r($data);
   $format = print_r('</pre>');
   return $format;
}

// Elimina exceso de espacios entre parametros
function strClean($strCadena)
{
    
   $String = preg_replace(['/\s+/','/^\sǀ\s$/'],[' ',''], $strCadena);
   $String = trim($string); //elimina esmacios en blanco al inicio y al final
   $String = stripslashes($string); // elimina los invertidos
   $String = str_ireplace("<script>","",$string);
   $String = str_ireplace("</script>","",$string);
   $String = str_ireplace("<script src>","",$string);
   $String = str_ireplace("<script type=>","",$string);
   $String = str_ireplace("SELECT * FROM","",$string);
   $String = str_ireplace("DELETE * FROM","",$string);
   $String = str_ireplace("INSERT INTO","",$string);
   $String = str_ireplace("SELECT COUNT(*) FROM","",$string);
   $String = str_ireplace("DROP TABLE","",$string);
   $String = str_ireplace("OR '1'='1","",$string);
   $String = str_ireplace('OR "1"="1"',"",$string);
   $String = str_ireplace('OR ´1´=´1´',"",$string);
   $String = str_ireplace("is NULL; --","",$string);
   $String = str_ireplace("is NULL; --","",$string);
   $String = str_ireplace("LIKE '","",$string);
   $String = str_ireplace('LIKE "',"",$string);
   $String = str_ireplace("LIKE '","",$string);
   $String = str_ireplace("OR 'a'='a","",$string);
   $String = str_ireplace('OR "a"="a',"",$string);
   $String = str_ireplace("OR ´a´=´a´","",$string);
   $String = str_ireplace("OR ´a´=´a´","",$string);
   $String = str_ireplace("--","",$string);
   $String = str_ireplace("^","",$string);
   $String = str_ireplace("[","",$string);
   $String = str_ireplace("-]-","",$string);
   $String = str_ireplace("==","",$string);
   return $string;
}

// Genera una contraseña de 10 caracteres
function passGenerator($Length = 10)
{
   $pass = "";
   $longitudPass=$Length;
   $cadena = "ABCDEFGHIJKLMNOPQRSTUVWYZabcdefghijklmnopqrstuvwxyz1234567890";
   $longitudCadena=strlen($cadena);

   for ($i=1; $i<=$longitudPass; $i++) 
   { 
      $pos = rand(0,$longitudCadena-1);
      $pass .= substr($cadena,$pos,1);
   }
   return $pass;

}
//Genera  un token

function token(){

   $r1 = bin2hex(random_bytes(10));
   $r2 = bin2hex(random_bytes(10));
   $r3 = bin2hex(random_bytes(10));
   $r4 = bin2hex(random_bytes(10));
   $token = $r1. '-' .$r2. '-' .$r3. '-' .$r4;
   return $token; 
}
//Formato para valores monetarios
function formatMoney($cantidad){

   $cantidad = number_format($cantidad,2,SPD,SPM);
   return $cantidad;
}


?>