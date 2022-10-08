<?php 
	
	//define("BASE_URL", "http://localhost/tienda_virtual/");
	const BASE_URL = "http://localhost/SUTEC3D";

	//Zona horaria
	date_default_timezone_set('America/Mexico_City');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	const DB_NAME = "vi_db";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "$";

	//Datos envio de correo
	
	const NOMBRE_REMITENTE = "SUTEC 3D";
	const EMAIL_REMITENTE = "no-reply@sutec3d.com";
	const NOMBRE_EMPESA = "SUTEC 3D";
	const WEB_EMPRESA = "www.sutec3d.com";


 ?>