<?php

require_once('Connections/olimarteam.php');




$nombre = $_POST["name"];
$email = $_POST["email"];
$city = $_POST["city"];
$pais = $_POST["country"];

$header = 'From: ' . $email . " \r\n";
$header .= "X-Mailer: PHP/" . phpversion() . " \r\n";
$header .= "Mime-Version: 1.0 \r\n";
$header .= "Content-Type: text/plain";

$mensaje = "Este mensaje fue enviado por " . $nombre . ", desde " . $city . ", " . $pais . " \r\n";
$mensaje .= "Su e-mail es: " . $email . " \r\n";
$mensaje .= "Mensaje: " . $_POST['comments'] . " \r\n";
$mensaje .= " \r\n";
$mensaje .= " \r\n";
$mensaje .= "Enviado el " . date('d/m/Y', time());

$para = 'info@olimarteam.com';
$asunto = 'Contacto desde olimarteam.com';

// Aquí se deberían validar los datos ingresados por el usuario
if(!isset($_POST['name']) ||
!isset($_POST['email']) ||
!isset($_POST['comments'])) {
echo "Por favor, vuelva atrás y verifique la información ingresada<br />";
die();
}

mail($para, $asunto, utf8_decode($mensaje), $header);

//echo "Mensaje enviado correctamente"

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "contactForm")) {
  $insertSQL = sprintf("INSERT INTO contacto (nombre, email, comentario, ciudad, pais) VALUES (%s, %s, %s, %s, %s)",   					 
                       GetSQLValueString($_POST['name'], "text"),
                       GetSQLValueString($_POST['email'], "text"),
                       GetSQLValueString($_POST['comments'], "text"),
                       GetSQLValueString($_POST['city'], "text"),
                       GetSQLValueString($_POST['country'], "text"));                  
					  					   
  mysql_select_db($database_olimarteam, $olimarteam);
  $Result1 = mysql_query($insertSQL, $olimarteam) or die(mysql_error());

$insertGoTo = "index_envio_ok.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}

?>


