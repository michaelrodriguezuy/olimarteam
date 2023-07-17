<?php require_once('Connections/olimarteam.php'); ?>
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

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
  $insertSQL = sprintf("INSERT INTO contacto (nombre, email, comentario) VALUES (%s, %s, %s)",
                       GetSQLValueString($_POST['nombre'], "text"),
                       GetSQLValueString($_POST['email'], "text"),
                       GetSQLValueString($_POST['comentario'], "text"));

  mysql_select_db($database_olimarteam, $olimarteam);
  $Result1 = mysql_query($insertSQL, $olimarteam) or die(mysql_error());
}
?>
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
		
		
	</head>
	
	<body>

		<!-- HEADER -->
		<div id="header">
			<!-- wrapper-header -->
			<div class="wrapper">
			
				<!-- Social -->
				<ul class="social ">
					<li><a target="_blank" href="https://www.facebook.com/michael.rodriguez.92102" class="poshytip  facebook" title="Hazte fan"></a></li>
					<li><a target="_blank" href="https://twitter.com/Micha_33" class="poshytip twitter" title="Sigue nuestros tweets"></a></li>
					
					<li><a target="_blank" href="https://uy.linkedin.com/in/michaelR33" class="poshytip linkedin" title="Siguenos"></a></li>					
					<li><a target="_blank" href="https://plus.google.com/u/0/+MichaelRodríguez_33" class="poshytip google" title="Agreganos a tus circulos"></a></li>					
					<li><a href="mailto:olimarteam@gmail.com" class="poshytip email" title="Escribenos"></a></li>
					<li><a href="skype:olimarteam?chat" class="poshytip skype" title="Chat"></a></li>
					
<!--
					<li><a href="http://www.dribbble.com" class="poshytip dribbble" title="View our work"></a></li>
					<li><a href="http://www.vimeo.com" class="poshytip vimeo" title="View our videos"></a></li>
					-->
				</ul>
				<!-- ENDS Social -->

 				<a href="index.php"><img id="logo" src="img/logo.png" alt="olimarteam" /></a>
				
				<!-- headline -->
				<div id="headline">
					<div class="slides_container">
						<div>Servicios Informáticos </div>
			
						<div>Analisis y desarrollo de aplicaciones. Reparación y mantenimiento de computadoras. Implementación de redes informaticas.</div>
						
						<div>Estoy disponible. <a href='#' >Llámame +(598) 99 163 200</a></div>
																	
					</div>
					
				</div>
				<!-- ENDS headline -->
					
					
				<!-- Navigation -->
				<ul id="nav" class="sf-menu">
					<li class="current-menu-item"><a href="index.php">Inicio</a></li>
					<!-- <li><a href="proyecto.php">Proyectos</a></li>					-->
					<li><a href="servicios.html">Servicios</a>
						<ul>
							<li><a href="servicios.html">Vista lateral</a></li>
							<li><a href="servicios-fullwidth.html">Vista completa</a></li>
						</ul>
					</li>
					<li><a href="clientes.html">Clientes</a></li>
	
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
                
				<!-- search -->
				<div class="top-search">
					<form  method="get" id="searchform" action="#">
						<div>
							<input type="text" value="Buscar..." name="s" id="s" onFocus="defaultInput(this,'Buscar...')" onBlur="clearInput(this,'Buscar...')" />
							<input type="submit" id="searchsubmit" value=" " />
						</div>
					</form>
				</div>
				<!-- ENDS search -->
			
				<!-- Posts -->
				<div>
					<ul class="blocks-thumbs">
	
<?php
include('abre-conexion.php'); 

$query_tb = "SELECT nombre,extracto,fecha,inicio FROM $tabla_proyecto";
$recupero1 = mysql_query($query_tb, $conexion_db) or die(mysql_error());
//$recupero2 = mysql_query($query_tb, $conexion_db) or die(mysql_error());
//$recupero3 = mysql_query($query_tb, $conexion_db) or die(mysql_error());
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
while ($row_tb=mysql_fetch_assoc($recupero1)) 
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
							<a href="proyecto.php" class="thumb" title="<?php echo "$rec_nombre" ?>"><img src="img/dummies/<?php echo "th{$rec_nombre}.gif" ?>" alt="Post" /></a>
							<div class="excerpt">
								<a href="proyecto.php" class="header"> <?php echo "$rec_nombre" ?> </a>
								<!--en la descripcion que muestre solo los primero 50 caracteres, el resto lo muestra cuando ingreso al proyecto -->
								<a href="proyecto.php" class="text"> <?php echo "$rec_extracto " ?> </a>
								<div class="meta">Michael el <?php echo "$rec_fecha" ?> </div>
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
					<span class="big">Contratame!</span> <span class="small"> Estoy disponible como freelance</span>
					<div  class="to-top poshytip" title="ir arriba">arriba</div>
				</div>
				<!-- Ends title -->
				
				<!-- left col -->
				<div class="footer-left">
					<h6 class="p-title">Un poco de mi</h6>
					<p>Mi nombre es Michael, soy programador y software developer (desarrollador de software). Estoy ubicado en la ciudad de Treinta y Tres, Uruguay. He estado desarrollando software desde hace varios años. Si bien no tengo mucho tiempo en el mercado local, he adquirido experiencia en todo este tiempo de las distintas empresas por las cuales he pasado y/o con quienes he trabajado en los distintos proyectos.</p>

					<p>Me especializo en el analisis y desarrollo de aplicaciones basadas ​​en .Net y sitios web en PHP-MySQL. Cada software / sitio web que desarrollo se basa en los últimos principios y técnicas de desarrollo . Para saber más acerca de lo que puedo hacer por ti, pegale una vichada a mi trabajo a continuación, o ponete en contacto conmigo por <a href="mailto:olimarteam@gmail.com">email</a> o por teléfono al +(598) 99 163 200.</p>
					
					<h6 class="p-title">Herramientas</h6>
					<ul class="skills">
						<li class="stars-2"><span>Apache</span></li>
						<li class="stars-5"><span>VB.net</span></li>
						<li class="stars-3"><span>JAVA</span></li>
						<li class="stars-4"><span>PHP</span></li>
						<li class="stars-4"><span>MySQL</span></li>
						<li class="stars-4"><span>Access</span></li>
					</ul>

				</div>
				<!-- ENDS left col -->
				
				<!-- right col -->
				<div class="footer-right">
					<h6 class="p-title">Ponete en contacto</h6>
					<p>¿Queres contratarme o simplemente dejar un comentario? Utilizá el siguiente formulario para ponerte en contacto. No seas tímido!</p>

					<!-- form -->
					<script type="text/javascript" src="js/form-validation.js"></script>
					<form id="contactForm" name="form1" action="#" method="post">

                              
				<p> Gracias por sus comentarios.</p>

					</form>
                 
             
					<!-- ENDS form -->
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
				<div id="bottom-text"><a href="index.php" >olimarteam</a> 2015 es un archivo free by Michael Rodríguez </div>
				<div  class="to-top poshytip" title="ir arriba">arriba</div>
			</div>
			<!-- ENDS wrapper-bottom -->
		</div>
		<!-- ENDS Bottom -->
	
	</body>
</html>