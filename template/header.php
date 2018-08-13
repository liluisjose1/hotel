<?php
ob_start();
session_start();
    if(!$_SESSION["autentificado"])
    {
        header("Location: logica/salir.php");
    }
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="SI administrativo hotel">
        <meta name="author" content="liluisjose1">

        <link rel="shortcut icon" href="assets/images/logo.jpg">

        <title>Hotel Larios</title>

        <!-- DataTables -->
        <link href="assets/plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <!-- Responsive datatable examples -->
        <link href="assets/plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <!-- Multi Item Selection examples -->
        <link href="assets/plugins/datatables/select.bootstrap4.min.css" rel="stylesheet" type="text/css" />


        <!-- select2 -->
        <link href="assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />


        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

         <link href="assets/plugins/bootstrap-sweetalert/sweet-alert.css" rel="stylesheet" type="text/css">

        <script src="assets/js/modernizr.min.js"></script>


    </head>


    <body class="fixed-left" style="zoom:90%;">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="text-center">
                        <a href="home.php" class="logo"><i class="icon-magnet icon-c-logo"></i><span>Lari<i class="md md-album"></i>s</span></a>
                        <!-- Image Logo here -->
                        <!-- <a href="index.html" class="logo">
                        <i class="icon-c-logo"> <img src="assets/images/logo_sm.png" height="42"/> </i>
                        <span><img src="assets/images/logo_light.png" height="20"/></span>
                        </a> -->
                    </div>
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <nav class="navbar-custom">

                    <ul class="list-inline float-right mb-0">

                        <li class="list-inline-item notification-list">
                            <a class="nav-link waves-light waves-effect" href="#" id="btn-fullscreen">
                                <i class="dripicons-expand noti-icon"></i>
                            </a>
                        </li>

                        <li class="list-inline-item dropdown notification-list">
                            <a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
                               aria-haspopup="false" aria-expanded="false">
                                <img src="assets/images/logo.jpg" alt="user" class="rounded-circle">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown " aria-labelledby="Preview">

                                <!-- item-->
                                <a href="profile.php" class="dropdown-item notify-item">
                                    <i class="md md-account-circle"></i> <span>Profile</span>
                                </a>
                                <!-- item-->
                                <a href="logica/salir.php" class="dropdown-item notify-item">
                                    <i class="md md-settings-power"></i> <span>Logout</span>
                                </a>

                            </div>
                        </li>

                    </ul>

                    <ul class="list-inline menu-left mb-0">
                        <li class="float-left">
                            <button class="button-menu-mobile open-left waves-light waves-effect">
                                <i class="dripicons-menu"></i>
                            </button>
                        </li>
                    </ul>

                </nav>

            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->

            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">
                    <!--- Divider -->
                    <div id="sidebar-menu">
                        <ul>

                            <li class="text-muted menu-title">Principal</li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-home"></i> <span> Administración </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="home.php">Home</a></li>
                                    <li><a href="users.php">Usuarios</a></li>
                                </ul>
                            </li>
                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-user"></i> <span> Clientes </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="cliente_registro.php">Registro</a></li>
                                    <li><a href="cliente_hospedado.php">Hospedados</a></li>
                                </ul>
                            </li>
                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-agenda"></i> <span> Habitaciones </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="h_registro.php">Registro</a></li>
                                    <li><a href="h_cat.php">Categorias</a></li>
                                    <li><a href="h_desocupadas.php">Disponibles</a></li>
                                </ul>
                            </li>
                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-book"></i> <span>Recepción</span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="check_in.php">Check in</a></li>
                                    <li><a href="check_out.php">Check Out</a></li>
                                </ul>
                            </li>

                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- Left Sidebar End -->

