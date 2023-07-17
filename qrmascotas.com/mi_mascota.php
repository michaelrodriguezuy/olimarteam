<?php require_once('Connections/qrmascotas.php'); ?>
<?php include('seguridad.php'); ?> 
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}

mysql_select_db($database_qrmascotas, $qrmascotas);
$query_DatosMascotas = "SELECT  mascota.id_mascota, mascota.tipo, mascota.apodo, mascota.foto, mascota.raza, mascota.color, mascota.fecha_nacimiento, mascota.fecha_ingreso, mascota.observacion, usuario.nombre FROM mascota, usuario WHERE mascota.id_usuario = usuario.id_usuario";
$DatosMascotas = mysql_query($query_DatosMascotas, $qrmascotas) or die(mysql_error());
$row_DatosMascotas = mysql_fetch_assoc($DatosMascotas);
$varDato_DatosMascotas = "0";
if (isset($_GET["recordID"])) {
  $varDato_DatosMascotas = $_GET["recordID"];
}
mysql_select_db($database_qrmascotas, $qrmascotas);
$query_DatosMascotas = sprintf("SELECT mascota.id_mascota, mascota.tipo, mascota.apodo, mascota.foto, mascota.raza, mascota.color, mascota.fecha_nacimiento, mascota.fecha_ingreso, mascota.observacion, usuario.nombre FROM mascota, usuario WHERE mascota.id_usuario = usuario.id_usuario AND mascota.id_usuario = %s", GetSQLValueString($varDato_DatosMascotas, "int"));
$DatosMascotas = mysql_query($query_DatosMascotas, $qrmascotas) or die(mysql_error());
$row_DatosMascotas = mysql_fetch_assoc($DatosMascotas);
$totalRows_DatosMascotas = "user";
if (isset($_GET["recordID"])) {
  $totalRows_DatosMascotas = $_GET["recordID"];
}

mysql_select_db($database_qrmascotas, $qrmascotas);
$query_DatosMascotas = sprintf("SELECT mascota.id_mascota, mascota.tipo, mascota.apodo, mascota.foto, mascota.raza, mascota.color, mascota.fecha_nacimiento, mascota.fecha_ingreso, mascota.observacion, usuario.nombre FROM mascota, usuario WHERE mascota.id_usuario = usuario.id_usuario AND usuario.usuario = %s", GetSQLValueString($varDato_DatosMascotas, "text"));
$DatosMascotas = mysql_query($query_DatosMascotas, $qrmascotas) or die(mysql_error());
$row_DatosMascotas = mysql_fetch_assoc($DatosMascotas);

mysql_select_db($database_qrmascotas, $qrmascotas);
$query_DatosMascotas = sprintf("SELECT mascota.id_mascota, mascota.tipo, mascota.apodo, mascota.foto, mascota.raza, mascota.color, mascota.fecha_nacimiento, mascota.fecha_ingreso, mascota.observacion, usuario.nombre FROM mascota, usuario WHERE mascota.id_usuario = usuario.id_usuario AND mascota.id_usuario = %s", GetSQLValueString($varDato_DatosMascotas, "int"));
$DatosMascotas = mysql_query($query_DatosMascotas, $qrmascotas) or die(mysql_error());
$row_DatosMascotas = mysql_fetch_assoc($DatosMascotas);
$varDato2_DatosMascotas = "0";
if (isset($_GET["recordID"])) {
  $varDato2_DatosMascotas = $_GET["recordID"];
}
mysql_select_db($database_qrmascotas, $qrmascotas);
$query_DatosMascotas = sprintf("SELECT mascota.id_mascota, mascota.tipo, mascota.apodo, mascota.foto, mascota.raza, mascota.color, mascota.fecha_nacimiento, mascota.fecha_ingreso, mascota.observacion, usuario.nombre FROM mascota, usuario WHERE mascota.id_usuario = usuario.id_usuario AND mascota.id_usuario = %s", GetSQLValueString($varDato2_DatosMascotas, "int"));
$DatosMascotas = mysql_query($query_DatosMascotas, $qrmascotas) or die(mysql_error());
$row_DatosMascotas = mysql_fetch_assoc($DatosMascotas);
$totalRows_DatosMascotas = mysql_num_rows($DatosMascotas);

$varDato_DatosUsuarios = "0";
if (isset($_GET["recordID"])) {
  $varDato_DatosUsuarios = $_GET["recordID"];
}
mysql_select_db($database_qrmascotas, $qrmascotas);
$query_DatosUsuarios = sprintf("SELECT * FROM usuario WHERE usuario.id_usuario = %s", GetSQLValueString($varDato_DatosUsuarios, "int"));
$DatosUsuarios = mysql_query($query_DatosUsuarios, $qrmascotas) or die(mysql_error());
$row_DatosUsuarios = mysql_fetch_assoc($DatosUsuarios);
$totalRows_DatosUsuarios = mysql_num_rows($DatosUsuarios);
?>
<!DOCTYPE  html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Mascotas QR</title>
		
		<!-- CSS -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="css/social-icons.css" type="text/css" media="screen" />
		<!--[if IE 8]>
			<link rel="stylesheet" type="text/css" media="screen" href="/css/ie8-hacks.css" />
		<![endif]-->
		<!-- ENDS CSS -->	
				
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
		
		<!-- JS -->
		<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.13.custom.min.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript" src="js/jquery.scrollTo-1.4.2-min.js"></script>
		<script type="text/javascript" src="js/quicksand.js"></script>
		<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
		<script type="text/javascript" src="js/custom.js"></script>
		<!--[if IE]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
			<script>
	      		/* EXAMPLE */
	      		//DD_belatedPNG.fix('*');
	    	</script>
		<![endif]-->
		<!-- ENDS JS -->
		
		
		<!-- Nivo slider -->
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
		<script src="js/nivo-slider/jquery.nivo.slider.js" type="text/javascript"></script>
		<!-- ENDS Nivo slider -->
		
		<!-- tabs -->
		<link rel="stylesheet" href="css/tabs.css" type="text/css" media="screen" />
		<script type="text/javascript" src="js/tabs.js"></script>
  		<!-- ENDS tabs -->
  		
  		<!-- prettyPhoto -->
		<script type="text/javascript" src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="css/superfish.css" /> 
		<link rel="stylesheet" media="screen" href="css/superfish-left.css" /> 
		<script type="text/javascript" src="js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script type="text/javascript" src="js/superfish-1.4.8/js/superfish.js"></script>
		<script type="text/javascript" src="js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js/poshytip-1.0/src/tip-twitter/tip-twitter.css" type="text/css" />
		<link rel="stylesheet" href="js/poshytip-1.0/src/tip-yellowsimple/tip-yellowsimple.css" type="text/css" />
		<script type="text/javascript" src="js/poshytip-1.0/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  type="text/css"/> 
		<script src="js/tweet/jquery.tweet.js" type="text/javascript"></script> 
		<!-- ENDS Tweet -->
		
		<!-- Fancybox -->
		<link rel="stylesheet" href="js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
		<script type="text/javascript" src="js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
		<!-- ENDS Fancybox -->
		
		<!-- SKIN -->
		<link rel="stylesheet" href="skins/plastic/style.css" type="text/css" media="screen" />

 <!-- favicon-->
		<link rel="shortcut icon" href="favicon.ico" >

	</head>
	
	<body class="">
	
	
	<!-- WRAPPER -->
	<div id="wrapper">
		
		<!-- HEADER -->
		<div id="header"><!-- Social -->

			<div id="social-holder"></div>
        Usuario: <?php echo $_SESSION["nombre_usuario"]; ?>
			<!-- ENDS Social -->
			
			<!-- Navigation --><!-- Navigation -->	
			
			<!-- search --><!-- ENDS search -->
			
			<!-- Breadcrumb--><!-- ENDS Breadcrumb-->	

		</div>
		<!-- ENDS HEADER -->
		
	
    <script>
	function asegurar()
	{
		rc= confirm("¿Seguro que desea eliminar?");
		return rc;
	}
	</script>
    
    	<!-- MAIN -->
	  <div id="main"> 
	    <div align="center">
	      <h1> Mis datos: </h1>
	           
          
          <table width="100%" border="1"cellpadding="2" cellspacing="2">
	        <tr class=" blue-box">
    <td>Tipo</td>
    <td>Apodo</td>
    <td>Foto</td>
    <td>Raza</td>
    <td>Color</td>
    <td>Fecha de nacimiento</td>
    <td>Fecha de ingreso</td>
    <td>Observación</td>
    <td>Dueño</td>
    <td>Identificación</td>
    <td>Acciones</td>
  </tr>
  
  
            <?php do { ?>
            <tr>
              <td><?php echo $row_DatosMascotas['tipo']; ?></td>
              <td><?php echo $row_DatosMascotas['apodo']; ?></td>
              <td><img src="/qrmascotas.com/images/<?php echo $row_DatosMascotas['foto']; ?>"></td>
              <td><?php echo $row_DatosMascotas['raza']; ?></td>
              <td><?php echo $row_DatosMascotas['color']; ?></td>
              <td><?php echo $row_DatosMascotas['fecha_nacimiento']; ?></td>
              <td><?php echo $row_DatosMascotas['fecha_ingreso']; ?></td>
              <td><?php echo $row_DatosMascotas['observacion']; ?></td>
              <td><?php echo $row_DatosMascotas['nombre']; ?></td>
              <td><?php echo $row_DatosMascotas['identificacion']; ?></td>
              <td><a href="modificar_mi_mascota.php?recordID=<?php echo $row_DatosMascotas['id_mascota']; ?>"><img src="img/knobs-icons/Knob Smart.png" width="32" height="32" border="0"></a> 
              </td>
            </tr>
              <?php } while ($row_DatosMascotas = mysql_fetch_assoc($DatosMascotas)); ?>
  
          </table>

<table width="100%" border="1"cellpadding="2" cellspacing="2">
	        <tr class=" blue-box">
    <td>Nombre</td>
    <td>Usuario</td>
    <td>Celular</td>
    <td>Email</td>
    <td>Dirección</td>
    <td>Localidad</td>
    <td>Acciones</td>
  </tr>
    
    <tr>
      <td><?php echo $row_DatosUsuarios['nombre']; ?></td>
      <td><?php echo $row_DatosUsuarios['usuario']; ?></td>
      <td><?php echo $row_DatosUsuarios['celular']; ?></td>
      <td><?php echo $row_DatosUsuarios['email']; ?></td>
      <td><?php echo $row_DatosUsuarios['direccion']; ?></td>
      <td><?php echo $row_DatosUsuarios['localidad']; ?></td>
      <td><a href="modificar_usuario.php?recordID=<?php echo $row_DatosUsuarios['id_usuario']; ?>"><img src="img/knobs-icons/Knob Smart.png" width="32" height="32" border="0"></a>       
      </td>
      
    </tr>  
          </table>
	      
		</div>	  
          <a href="salir.php"><img src="img/knobs-icons/Knob Cancel.png" width="32" height="32" border="0" title="Cerrar sesion"></a>
	  </div>
		<!-- ENDS MAIN -->

  	  <!-- FOOTER -->
	<div id="footer">				
				<!-- footer-cols -->				<!-- ENDS footer-cols -->				
				<!-- Bottom -->
				<div id="bottom">
				<a href="http://olimarteam.no-ip.info/qrmascotas.com" >Mascotas QR</a> es una plantilla de <a href="http://olimarteam.com"> Olimarteam</a></div>
				<!-- ENDS Bottom -->
	  </div>
		<!-- ENDS FOOTER -->
	
	</div>
	<!-- ENDS WRAPPER -->
	
	</body>
	
</html>
<?php
mysql_free_result($DatosMascotas);

mysql_free_result($DatosUsuarios);
?>
