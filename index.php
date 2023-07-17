﻿<?php require_once('Connections/olimarteam.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysqli_real_escape_string") ? mysqli_real_escape_string($olimarteam, $theValue) : mysqli_escape_string($olimarteam, $theValue);


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

/*

function obtenerIP () {
   if ( filter_var( $_SERVER['HTTP_CLIENT_IP'], FILTER_VALIDATE_IP ) ) {
      return $_SERVER['HTTP_CLIENTE_IP'];
   }
   elseif ( filter_var ( $_SERVER['HTTP_X_FORWARDED_FOR'], FILTER_VALIDATE_IP ) ) {
      return $_SERVER['HTTP_X_FORWARDED_FOR'];
   }
   elseif ( filter_var ( $_SERVER['HTTP_VIA'], FILTER_VALIDATE_IP ) ) {
      return $_SERVER['HTTP_VIA'];
   }
   else {
      return $_SERVER['REMOTE_ADDR'];
   }
}
*/

if((isset($_POST['submit'])) && ($_POST["MM_insert"] == "contactForm")){
        if($_POST['name'] == '' or $_POST['name'] == 'Nombre'){
            $error1 = '<span class="error">Cual es tu nombre?</span>';
			
        }else if($_POST['email'] == '' or !preg_match("/^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/",$_POST['email'])){
            $error2 = '<span class="error">Ingrese un email válido</span>';
			
        }else if($_POST['city'] == ''){
            $error3 = '<span class="error">Cual es tu ciudad?</span>';
        }else if($_POST['country'] == ''){
			$error4 = '<span class="error">Cual es tu pais?</span>';
		}else if($_POST['comments'] == ''){
            $error5 = '<span class="error">En que te podemos ayudar?</span>';            
        }else{
		
            $para = 'info@olimarteam.uy';
            $nombre = $_POST["name"];
			$email = $_POST["email"];			
            $city = $_POST["city"];
			$pais = $_POST["country"];
			//$IP2 = $_getRealIP();
			
            //Cabeceras del correo            		
			$header = 'From: ' . $email . " \r\n";
			$header .= "X-Mailer: PHP/" . phpversion() . " \r\n";
			$header .= "Mime-Version: 1.0 \r\n";
			$header .= "Content-Type: text/plain";

			$mensaje .= " \r\n";
			$mensaje = "Este mensaje fue enviado por " . $nombre . ", desde " . $city . ", " . $pais . " \r\n";
			$mensaje .= "Su e-mail es: " . $email . " \r\n";
			$mensaje .= " \r\n";
			$mensaje .= "Mensaje: " . $_POST['comments'] . " \r\n";
			$mensaje .= " \r\n";
			$mensaje .= "Viene referido desde " . $_SERVER['HTTP_REFERER'];
			$mensaje .= " \r\n";
			$mensaje .= " \r\n";
			$mensaje .= "Enviado el " . date('d/m/Y', time()) . ", desde la IP:" . obtenerIP() . " \r\n";
			
			$asunto = 'Contacto desde olimarteam.uy';

			if(mail($para,$asunto,$mensaje,$header)){
                foreach($_POST AS $key => $value) {
                    $_POST[$key] = mysqli_real_escape_string($olimarteam, $value);
                } 
                
				$insertSQL = sprintf("INSERT INTO contacto (nombre, email, comentario, ciudad, pais, ip) VALUES (%s, %s, %s, %s, %s, %s)",   					 
                       GetSQLValueString($_POST['name'], "text"),
                       GetSQLValueString($_POST['email'], "text"),
                       GetSQLValueString($_POST['comments'], "text"),
                       GetSQLValueString($_POST['city'], "text"),
                       GetSQLValueString($_POST['country'], "text"),
					   GetSQLValueString(obtenerIP(), "text"));
				mysql_select_db($database_olimarteam, $olimarteam);
				$olimarteam->query($insertSQL) or die($olimarteam->error);

				$result = '<div class="result_ok">Nos llegó tu mensaje, te vamos a contactar. <img src="http://olimarteam.uy/icon_smile.gif" alt=":)" class="wp-smiley"> </div>'; 
		
				// si el envio fue exitoso reseteamos lo que el usuario escribio:
                $_POST['name'] = 'Nombre';
                $_POST['email'] = 'Email';
                $_POST['city'] = 'Ciudad';
                $_POST['country'] = 'Pais';
				$_POST['comments'] = 'En que te podemos ayudar?';
            }else{
                $result = '<div class="result_fail">Hubo un error al enviar el mensaje <img 	src="http://olimarteam.uy/icon_sad.gif" alt=":(" class="wp-smiley"> </div>';
            }
		}
}


?>


<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-79853896-1', 'auto');
  ga('send', 'pageview');

</script>
<!DOCTYPE  html>
<html>
	<head>
		<meta charset="utf-8">
		<title>olimarteam</title>
		
		<link rel="icon" href="favicon.ico" type="image/x-icon" />		
	
		<!-- CSS -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="css/social-icons.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="" type="text/css" media="screen" id="css-skins" />
		<!--[if IE 8]>
			<link rel="stylesheet" type="text/css" media="screen" href="css/ie8-hacks.css" />
		<![endif]-->
		<!-- ENDS CSS -->	
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:light' rel='stylesheet' type='text/css'>
		
		<!-- JS -->
	<script src="js/jquery-1.5.1.min.js"></script>
	<script src="js/jquery-ui-1.8.13.custom.min.js"></script>
	<script src="js/easing.js"></script>
	<script src="js/jquery.scrollTo-1.4.2-min.js"></script>
	<script src="js/slides.min.jquery.js"></script>
	<script src="js/moveForm.js"></script>
	<script src="js/custom.js"></script>
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
		<!--
        <link rel="stylesheet" media="screen" href="css/superfish-left.css" /> 
        -->
   	<script type="text/javascript" src="js/superfish-1.4.8/js/hoverIntent.js"></script>
	<script type="text/javascript" src="js/superfish-1.4.8/js/superfish.js"></script>
	<script type="text/javascript" src="js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js/poshytip-1.0/src/tip-twitter/tip-twitter.css" type="text/css" />
		<link rel="stylesheet" href="js/poshytip-1.0/src/tip-yellowsimple/tip-yellowsimple.css" type="text/css" />
		<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
		<link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/poshytip-1.0/src/jquery.poshytip.min.js"></script>
	<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
	<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
		<!-- ENDS poshytip -->
		
		
	</head>
	
	<body>

		<!-- HEADER -->
		<div id="header">
			<!-- wrapper-header -->
			<div class="wrapper">
			
				<!-- Social -->
			  <ul class="social ">
															
					<li><a target="_blank" href="https://uy.linkedin.com/in/michaelR33" class="poshytip linkedin" title="Siguenos"></a></li>					
									
				  <li><a href="mailto:info@olimarteam.uy" class="poshytip email" title="Escribenos"></a></li>
					<li><a href="skype:olimarteam?chat" class="poshytip skype" title="Chat"></a></li>
					
<!--
					<li><a href="http://www.dribbble.com" class="poshytip dribbble" title="View our work"></a></li>
					<li><a href="http://www.vimeo.com" class="poshytip vimeo" title="View our videos"></a></li>
					-->
			  </ul>
				<!-- ENDS Social -->

 				<a href="http://olimarteam.uy"><img src="img/logo24.png" alt="olimarteam" name="logo" id="logo" /></a>
				
				<!-- headline -->
				<div id="headline">
					<div class="slides_container">
						<div>Sistemas Informáticos a medida</div>
                        
                      <div>Sistemas Informáticos de gestión</div>
                        
                      <div>Automatización de procesos administrativos</div>
			
					  <div>Soporte y mantenimiento.</div>
						
					  <div>Estamos disponibles. <a href='#' >Llámanos (+598) 99 163 200</a></div>
																	
					</div>
					
				</div>
				<!-- ENDS headline -->
					
					
				<!-- Navigation -->
				<ul id="nav" class="sf-menu">
					<li class="current-menu-item"><a href="http://olimarteam.uy/">Inicio</a></li>
					<!-- <li><a href="proyecto.php">Proyectos</a></li>					-->
				 <!--	<li><a href="http://servicios.olimarteam.uy">Servicios</a>               -->
                  <li><a href="servicios.php">Servicios</a>                    
					<!--	<ul>
							<li><a href="http://servicios.olimarteam.uy">Vista lateral</a></li>
							<li><a href="http://servicios2.olimarteam.uy">Vista completa</a></li>
						</ul>
                        -->
					</li>
<!--					<li><a href="http://clientes.olimarteam.uy">Clientes</a></li> -->
                  <li><a href="clientes.php">Clientes</a></li>
	
<!--
					<li><a href="index.php">Pieles</a>
						<ul>
							<li><a href="javascript:changeSkin('orange')">Naranja</a></li>
							<li><a href="javascript:changeSkin('')">Original</a></li>
							<li><a href="javascript:changeSkin('pink')">Rosado</a></li>
							<li><a href="javascript:changeSkin('dark-blue')">Azul Oscuro</a></li>
							<li><a href="javascript:changeSkin('brown')">Marrón</a></li>
							<li><a href="javascript:changeSkin('green')">Verde</a></li>
						</ul>
					</li>
					
					<li><a href="http://luiszuno.com/blog/downloads/caja-template">Descargas</a></li>
-->					
					<li id="hire"><a href="#">Sobre nosotros</a></li>
			  </ul>
				<!-- Navigation -->

			</div>
			<!-- ENDS wrapper-header -->
			<div id="top-torn"></div>	
		</div>
		<!-- ENDS HEADER -->
			
		<!-- MAIN -->
		<div id="main">
			<!-- wrapper-main -->
			<div class="wrapper">
			
				<!-- filter -->
				<ul class="tags">
				</ul>
                
				
			
				<!-- Posts -->
				<div>
					<ul class="blocks-thumbs">
	
<?php
/*
include('abre-conexion.php'); 
mysql_set_charset('utf8');
*/

//selecciono ciertos valores de la tabla proyectos
$query_tb = "SELECT nombre,extracto,fecha,inicio FROM $tabla_proyecto ORDER BY id_proyecto";
$recupero1 = mysqli_query($olimarteam, $query_tb) or die(mysqli_error($olimarteam));

// ------------------------------------------------------------------------
$rec_nombre=""; 
$rec_extracto="";
$rec_fecha="";
$rec_inicio="";

// este lo puse yo, solo para que muestra solo 6
//$rec_contador=0;

// este lo puse yo, para saber si quedan mas para mostrar
//$rec_masPag = mysqli_num_rows($recupero1);

//sentencia original
while ($row_tb=mysqli_fetch_assoc($recupero1)) 
//while (($row_tb=mysql_fetch_assoc($recupero1)) && ($rec_contador<6))
{ 
$rec_nombre = ($row_tb['nombre']."");
$rec_extracto = ($row_tb['extracto']."");
$rec_fecha = ($row_tb['fecha']."");
$rec_inicio = ($row_tb['inicio']."");

// echo "$rec_nombre <br>";
// echo "$rec_descripcion <br>";
// echo "$rec_fecha <br>"; 
if ($rec_inicio==1) { ?>

<!-- ACA QUE SE VEAN SOLAMENTE 6, LOS MEJORES, SI HAY MAS QUE SE VAYAN PARA OTRA PAGINA -->
					<li>
                    <!-- los clientes van a su web siempre dentro de mi sitio web, van a proyecto.php-->
							<a class="thumb" title="<?php echo "$rec_nombre" ?>"><img src="img/dummies/<?php echo "th{$rec_nombre}.gif" ?>" alt="Post" /></a>
							<div class="excerpt">
								<a class="header"> <?php echo "$rec_nombre" ?> </a>
								<!--en la descripcion que muestre solo los primero 50 caracteres, el resto lo muestra cuando ingreso al proyecto -->
								<a class="text"> <?php echo "$rec_extracto" ?> </a>
								<div class="meta"> <?php echo "$rec_fecha" ?> </div>
							</div>
					</li>
<?php 
//$rec_contador++;
}
}		
// ------------------------------------------------------------------------
// Cerramos las conexión a la base de datos
include('cierra-conexion.php');
?>
		
					<!-- pager -->
					<!-- ACA DEPENDE DE LOS PROYECTOS QUE HAYA HECHO -->
					
		</ul>
        <!--
					<ul class='pager'>
						<li class='first-page'><a href='#'>&laquo;</a></li>
						<li><a href='#' >&lsaquo;</a></li>											
						<li class='active'><a href='#'>1</a></li>											
						<li><a href='#' >&rsaquo;</a></li>
						<li class='last-page'><a href='#'>&raquo;</a></li>
					</ul>
		-->
        			<div class="clear"></div>
					<!-- ENDS pager -->				
						
				</div>
				<!-- ENDS posts -->
				
			<div class="clear"></div>
			</div>
			<!-- ENDS wrapper-main -->
		</div>
		<!-- ENDS MAIN -->

			
		<!-- FOOTER -->
		<div id="footer">
			<!-- wrapper-footer -->
			<div class="wrapper">
			
				
				<!-- title -->
				<div class="title">
					<span class="big">Contrátanos!</span> <span class="small"> Estamos disponibles</span>
					<div  class="to-top poshytip" title="ir arriba">arriba</div>
				</div>
				<!-- Ends title -->
				
				<!-- left col -->
				<div class="footer-left">
					<h6 class="p-title">Un poco sobre nosotros</h6>
					<p> Estamos ubicados en la ciudad de Treinta y Tres, Uruguay. Hemos estado desarrollando software desde hace varios años. Si bien no tenemos mucho tiempo en el mercado local, hemos adquirido experiencia, de las distintas empresas por las cuales hemos pasado y/o con quienes hemos trabajado en distintos proyectos.</p>

					<p>Nos especializamos en el análisis y desarrollo de aplicaciones de escritorio y sitios web. Cada producto que realizamos, se basa en los últimos principios y técnicas de desarrollo. Para saber más acerca de lo que podemos hacer por ti, revisa algunos de los trabajos que hemos realizado, o ponete en contacto con nosotros por <a href="mailto:info@olimarteam.uy">email</a> o telefónicamente al (+598) 99 163 200.</p>
					
					<h6 class="p-title">Herramientas</h6>
					<ul class="skills">
						
						<li class="stars-3"><span>Java (Eclipse)</span></li>
						<li class="stars-4"><span>PHP</span></li>
						<li class="stars-4"><span>MySQL</span></li>
						<li class="stars-4"><span>Access</span></li>

						<li class="stars-4"><span>HTML y HTML5</span></li>
						<li class="stars-2"><span>Python</span></li>
						<li class="stars-5"><span>VB.net (Sharpdevelop, Visual Studio)</span></li>
						<li class="stars-5"><span>PostgreSQL</span></li>
					</ul>

				</div>
				<!-- ENDS left col -->
				
				<!-- right col -->
			  <div class="footer-right">
				  <h6 class="p-title">Ponete en contacto</h6>
				<p>¿Queres contratarnos o simplemente dejar un comentario? Utilizá el siguiente formulario. No seas tímido!</p>

					<!-- form -->

		<form id="contactForm" name="contactForm" action='' method="POST">
                    <!--
                    <form id="contactForm" name="form1" action="send-mail.php" method="POST">
                    -->
			<fieldset>
            
			<div>                        
			 <input name="name" type="text" class="form-poshytip"  id="name" title="Cual es tu nombre?" 
             onFocus="defaultInput(this,'Nombre')" placeholder="Nombre" value='<?php echo $_POST['name']; ?>' >
			 <?php echo $error1 ?>
            </div>
      
            
			<div>                        
			 <input name="email" type="text" class="form-poshytip"  id="email" title="Cual es tu email?" 
             onFocus="defaultInput(this,'Email')" placeholder="Email" value='<?php echo $_POST['email']; ?>'>
			 <?php echo $error2 ?>
            </div>
            
            <div>
			 <input name="city"  id="city" type="text" class="form-poshytip" title="Cual es tu ciudad?" 
             placeholder="Ciudad" value='<?php echo $_POST['city']; ?>'>
			 <?php echo $error3 ?>
			</div>
            
            <div>
             <input name="country"  id="country" type="text" class="form-poshytip" title="Cual es tu pais?" 
             placeholder="País" value='<?php echo $_POST['country']; ?>'>
			 <?php echo $error4 ?>
              </div>
              
			<div>
			<textarea  name="comments"  id="comments" rows="5" cols="20" class="form-poshytip" title="En que te podemos ayudar?" onfocus="defaultInput(this,'En que te podemos ayudar?')" onblur="clearInput(this,'En que te podemos ayudar?')">En que te podemos ayudar?</textarea>
            <?php echo $error5 ?>
			</div>		                            
                            
			<p><input type="submit" value="Enviar" name="submit" id="submit" /></p> 
                                        
			</fieldset>
                      
            <input type="hidden" name="MM_insert" value="contactForm">
	       
			 <?php echo $result; ?>
		</form>
                   
                 <!--
                  <p id="success" class="success">Gracias por sus comentarios.</p>
					 ENDS form -->
			  </div>
				 <div class="clear"></div>
				<!-- ENDS right col -->
					
				
			</div>
			<!-- ENDS wrapper-footer -->
		</div>
		<!-- ENDS FOOTER -->
		
	
		<!-- Bottom -->
		<div id="bottom">
			<!-- wrapper-bottom -->
			<div class="wrapper">
				<div id="bottom-text"> © 2015 by <a href="http://olimarteam.uy/" >olimarteam</a> </div>
				<div  class="to-top poshytip" title="ir arriba">arriba</div>
			</div>
			<!-- ENDS wrapper-bottom -->
		</div>
		<!-- ENDS Bottom -->
	
    <!--bitrix24-->
<script>
	(function(w,d,u){
		var s=d.createElement('script');s.async=true;s.src=u+'?'+(Date.now()/60000|0);
		var h=d.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h);
	})(window,document,'https://cdn.bitrix24.es/b1261977/crm/tag/call.tracker.js');
</script>
   
	</body>
</html>
