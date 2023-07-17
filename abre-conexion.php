<?php
// Parametros a configurar para la conexion de la base de datos



$hotsdb = "localhost";    // sera el valor de nuestra BD
$basededatos = "wwwolima_olimarteam";    // sera el valor de nuestra BD

$usuariodb = "wwwolima";    // sera el valor de nuestra BD
$clavedb = "rjW63u0I6n";    // sera el valor de nuestra BD

$tabla_cliente = "cliente";    // sera el valor de una tabla
$tabla_servicio = "servicio";    // sera el valor de otra tabla
$tabla_proyecto = "proyecto";    // sera el valor de una tabla
$tabla_contacto = "contacto";    // sera el valor de otra tabla

// Fin de los parametros a configurar para la conexion de la base de datos

$conexion_db = mysql_connect("$hotsdb","$usuariodb","$clavedb")
    or die ("Conexión denegada, el Servidor de Base de datos que solicitas NO EXISTE");
    $db = mysql_select_db("$basededatos", $conexion_db)
    or die ("La Base de Datos <b>$basededatos</b> NO EXISTE");
?>
