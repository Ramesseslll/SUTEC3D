<?php

//Siempre colocar los Modelos la primera letra en Mayuscula para trabajar con los servidores con letra mayuscula y minuscula 

	class HomeModel extends Mysql
	{
		public function __construct()
		{
			parent::__construct();
		}	
	}
 ?>