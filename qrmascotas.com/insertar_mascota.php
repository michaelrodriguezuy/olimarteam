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

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}
//' " . ($_POST['fecha'])  . date("Y/m/d ") . " '
//$fechaActual= $_POST['fecha']  . date("Y/m/d ");
if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
  $insertSQL = sprintf("INSERT INTO mascota (tipo, apodo, raza, color, foto, fecha_ingreso, id_usuario, observacion, fecha_nacimiento, identificacion) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, MD5(%s))",
                       GetSQLValueString($_POST['tipo'], "text"),
                       GetSQLValueString($_POST['apodo'], "text"),
                       GetSQLValueString($_POST['raza'], "text"),
                       GetSQLValueString($_POST['color'], "text"),
                       GetSQLValueString($_POST['foto'], "text"),
                       GetSQLValueString($_POST['fecha_ingreso'], "date"),
                       GetSQLValueString($_POST['id_usuario'], "int"),
                       GetSQLValueString($_POST['observacion'], "text"),
                       GetSQLValueString($_POST['fecha_nacimiento'], "date"),
                       GetSQLValueString($_POST['identificacion'], "text"));

  mysql_select_db($database_qrmascotas, $qrmascotas);
  $Result1 = mysql_query($insertSQL, $qrmascotas) or die(mysql_error());

  $insertGoTo = "index.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}

mysql_select_db($database_qrmascotas, $qrmascotas);
$query_DatosUsuario = "SELECT * FROM usuario";
$DatosUsuario = mysql_query($query_DatosUsuario, $qrmascotas) or die(mysql_error());
$row_DatosUsuario = mysql_fetch_assoc($DatosUsuario);
$totalRows_DatosUsuario = mysql_num_rows($DatosUsuario);
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
		
        
        <!-- aca va javascript para subir imagenes-->
      <script>
function subirimagen(nombrecampo)
{
	self.name = 'opener';
	remote = open('gestionimagen.php?campo='+nombrecampo, 'remote', 'width=400,height=150,location=no,scrollbars=yes,menubars=no,toolbars=no,resizable=yes,fullscreen=no, status=yes');
 	remote.focus();
	}

</script>
        
	
    	<!-- MAIN -->
	  <div id="main"> Insertar Mascota:
     <form method="post" name="form1" action="<?php echo $editFormAction; ?>">
          <table align="center">
            <tr valign="baseline">
          <td nowrap align="right">Tipo:</td>
          <td><select name="tipo" size="1">
                <option>Caballo</option>
                <option>Gato</option>
                <option>Mono</option>
                <option>Oveja</option>
                <option>Pajaro</option>
              <option selected="selected">Perro</option>
                <option>Serpiente</option>
                <option>Ternero</option>
              <option>Tortuga</option>
                <option>Vaca</option>
          </select></td>
        </tr>
            <tr valign="baseline">
              <td nowrap align="right">Apodo:</td>
              <td><input type="text" name="apodo" value="" size="32"></td>
            </tr>
            <tr valign="baseline">
              <td nowrap align="right">Raza:</td>
              <td><input type="text" name="raza" value="" size="32"></td>
            </tr>
            <tr valign="baseline">
              <td nowrap align="right">Color:</td>
              <td><input type="text" name="color" value="" size="32"></td>
            </tr>
            <tr valign="baseline">
              <td nowrap align="right">Foto:</td>
              <td><input type="text" name="foto" value="" size="32">
              <input type="button" name="button2" id="button2" value="Subir Imagen" onClick="javascript:subirimagen('foto');"/></td>
            </tr>
            
            
            <tr valign="baseline">
              <td nowrap align="right">Observación:</td>
              <td><input type="text" name="observacion" value="" size="32"></td>
            </tr>
            <tr valign="baseline">
              <td nowrap align="right">Fecha de nacimiento:</td>
              <td><input type="date" name="fecha_nacimiento" value="2017/04/17" size="32"></td>
            </tr>
             <tr valign="baseline">
              <td nowrap align="right">Fecha de ingreso:</td>
              <td><input type="date" name="fecha_ingreso" value="2017/04/17" size="32"></td>
            </tr>
            <tr valign="baseline">
              <td nowrap align="right">Identificación:</td>
              <td><input type="text" name="identificacion" value="" size="32"></td>
            </tr>
            <tr valign="baseline">
          <td nowrap align="right">Dueño:</td>
          <td><select name="id_usuario">
            <option value=""  <?php if (!(strcmp("", $row_DatosUsuario['nombre']))) {echo "selected=\"selected\"";} ?>> </option>
            <?php
do {  
?>
            <option value="<?php echo $row_DatosUsuario['id_usuario']?>"<?php if (!(strcmp($row_DatosUsuario['id_usuario'], $row_DatosUsuario['nombre']))) {echo "selected=\"selected\"";} ?>><?php echo $row_DatosUsuario['nombre']?></option>
            <?php
} while ($row_DatosUsuario = mysql_fetch_assoc($DatosUsuario));
  $rows = mysql_num_rows($DatosUsuario);
  if($rows > 0) {
      mysql_data_seek($DatosUsuario, 0);
	  $row_DatosUsuario = mysql_fetch_assoc($DatosUsuario);
  }
?>
          </select></td>
        </tr>
            <tr valign="baseline">
              <td nowrap align="right">&nbsp;</td>
              <td><input type="submit" value="Insertar registro"></td>
            </tr>
          </table>
          <input type="hidden" name="MM_insert" value="form1">
        </form>
        <p>&nbsp;</p>

<a href="salir.php"><img src="img/knobs-icons/Knob Cancel.png" width="32" height="32" border="0" title="Cerrar sesion" ></a> <a href="panel.php"><img src="img/knobs-icons/Knob Left.png" width="32" height="32" border="0" title="Volver al Panel de control"></a>

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
    
    <p>&nbsp;</p>
    </body>
	
</html>
<?php
mysql_free_result($DatosUsuario);
?>
