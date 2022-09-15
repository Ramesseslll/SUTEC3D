<head>
    <meta charset="utf-8">
    <meta name="description" content="SUTEC3D Tecnologia y Elctronica">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1"><!-- linea encargada de hacer la pagina responsiva-->
    <meta name="author" content="Pagina  creada por: Victor Perez; Andres Flores; Eden Flores">
    <meta name="theme_color" content="#009688"> <!-- color del navbar-->
    <link rel="shortcut icon" href="<?= media();?>/images/uploads/sutec_logo2.ico";

    <title> <?= $data['tag_page']?></title>
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="<?= media(); ?>/css/main.css">
    <link rel="stylesheet" type="text/css" href="<?= media(); ?>/css/style.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body class="app sidebar-mini">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="<?= base_url(); ?>/dashboard">SUTEC3D</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="href=<?= base_url(); ?>/Opciones"><i class="fa fa-cog fa-lg"></i> Configuracion</a></li>
            <li><a class="dropdown-item" href="href=<?= base_url(); ?>/Perfil"><i class="fa fa-user fa-lg"></i> Perfil</a></li>
            <li><a class="dropdown-item" href="href=<?= base_url(); ?>/Cerrar_sesion"><i class="fa fa-sign-out fa-lg"></i> Cerrar sesion</a></li>
          </ul>
        </li>
      </ul>
    </header>

    <?php require_once("nav_admin.php"); ?>