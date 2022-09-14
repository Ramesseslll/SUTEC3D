<?php
 
function base_url()
{
    
    return BASE_URL; 
}

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

?>