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
$query_DatosMascotas = "SELECT mascota.id_mascota, mascota.tipo, mascota.apodo, mascota.foto, mascota.raza, mascota.color, mascota.fecha_nacimiento, mascota.fecha_ingreso, mascota.observacion, mascota.identificacion, mascota.id_usuario, usuario.nombre FROM mascota, usuario WHERE mascota.id_usuario = usuario.id_usuario";
$DatosMascotas = mysql_query($query_DatosMascotas, $qrmascotas) or die(mysql_error());
$row_DatosMascotas = mysql_fetch_assoc($DatosMascotas);
$totalRows_DatosMascotas = mysql_num_rows($DatosMascotas);
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
			<!-- ENDS Social -->
			
			<!-- Navigation --><!-- Navigation -->	
			
			<!-- search --><!-- ENDS search -->
			
			<!-- Breadcrumb--><!-- ENDS Breadcrumb-->	

		</div>
		<!-- ENDS HEADER -->
		

    
    	<!-- MAIN -->
	  <div id="main">   

      
	    <div align="center">
	      <h1><a href="listado_usuarios.php"><img src="img/knobs-icons/Knob Search.png" width="32" height="32" title="Ver usuarios"></a><a href="insertar_mascota.php" target="_blanc"><img src="img/knobs-icons/Knob Add.png" width="32" height="32" longdesc="img/knobs-icons/Knob Add.png" title="Insertar mascota"></a> Listado de mascotas: </h1>
	           
          
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
    <td>Acciones</td>
  </tr>
  
  <?php do { ?>
    <tr>
      <td><?php echo $row_DatosMascotas['tipo']; ?></td>
      
      <td>
      
      <a href="mascota.php?recordID=<?php echo $row_DatosMascotas['identificacion']; ?> & idUsuario=<?php echo $row_DatosMascotas['id_usuario']; ?>">  	  
	  <?php echo $row_DatosMascotas['apodo']; ?> 
      </a>
      
      </td>
      
      <td><img src="/qrmascotas.com/images/<?php echo $row_DatosMascotas['foto']; ?>"></td>
      <td><?php echo $row_DatosMascotas['raza']; ?></td>
      <td><?php echo $row_DatosMascotas['color']; ?></td>
      <td><?php echo $row_DatosMascotas['fecha_nacimiento']; ?></td>
      <td><?php echo $row_DatosMascotas['fecha_ingreso']; ?></td>
      <td><?php echo $row_DatosMascotas['observacion']; ?></td>
      <td><?php echo $row_DatosMascotas['nombre']; ?></td>
      <td><a href="modificar_mascota.php?recordID=<?php echo $row_DatosMascotas['id_mascota']; ?>"><img src="img/knobs-icons/Knob Smart.png" width="32" height="32" border="0"></a>  
      <a href="eliminar_mascota.php?recordID=<?php echo $row_DatosMascotas['id_mascota']; ?>"><img src="img/knobs-icons/Knob Remove.png" width="32" height="32" onClick="javascript:return asegurar();"></a> 
      </td>
    </tr>
    <?php } while ($row_DatosMascotas = mysql_fetch_assoc($DatosMascotas)); ?>
          </table>

	      
		</div>	   
        <a href="salir.php"><img src="img/knobs-icons/Knob Cancel.png" width="32" height="32" border="0" title="Cerrar sesion" ></a> 
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
?>
