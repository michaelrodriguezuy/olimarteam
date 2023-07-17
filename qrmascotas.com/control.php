<?php 
/* A continuación, realizamos la conexión con nuestra base de datos en MySQL */ 
$link = mysql_connect("localhost","root","yago4356"); 
mysql_select_db("codigosqr", $link); 

/* El query valida si el usuario ingresado existe en la base de datos. Se utiliza la función htmlentities para evitar inyecciones SQL. */ 
$myusuario = mysql_query("select id_usuario from usuario where usuario = '".htmlentities($_POST["usuario"])."'",$link); 
$nmyusuario = mysql_num_rows($myusuario); 

$resultado = mysql_query("SELECT id_usuario, nombre, admin FROM usuario WHERE usuario = '".htmlentities($_POST["usuario"])."'",$link);
//$myNombreusuario = mysql_query("select nombre from usuario where usuario = '".htmlentities($_POST["usuario"])."'",$link);
//$myIDusuario = mysql_query("select id_usuario from usuario where usuario = '".htmlentities($_POST["usuario"])."'",$link);

//Si existe el usuario, validamos también la contraseña ingresada y el estado del usuario... 
if($nmyusuario != 0)
{ 
  $sql = "select id_usuario from usuario where estado = 1 and usuario = '".htmlentities($_POST["usuario"])."' and password = '".md5(htmlentities($_POST["clave"]))."'"; 
  $myclave = mysql_query($sql,$link); 
  $nmyclave = mysql_num_rows($myclave); 
  
  //Si el usuario y clave ingresado son correctos (y el usuario está activo en la BD), creamos la sesión del mismo. 
  if($nmyclave != 0)
  { 
      session_start(); 
      //Guardamos dos variables de sesión que nos auxiliará para saber si se está o no "logueado" un usuario 
      $_SESSION["autentica"] = "SIP"; 
      $_SESSION["usuarioactual"] = mysql_result($myclave,0,0); 
	  $_SESSION["usuarioactual2"] = $_POST["usuario"];
	  //$_SESSION["usuarioactual3"] = $myNombreusuario;
	 // $_SESSION["usuarioactual4"] = $myIDusuario;
		
		if (!$resultado) {
		    echo 'No se pudo ejecutar la consulta: ' . mysql_error();
		    exit;
		}
		$fila = mysql_fetch_row($resultado);

		$_SESSION["id_usuario"] = $fila[0]; // 42
		$_SESSION["nombre_usuario"] = $fila[1]; // el valor de email
		$_SESSION["admin_usuario"] = $fila[2]; // el valor de email
      //nombre del usuario logueado. 
	  
      //Direccionamos a nuestra página principal del sistema, segun el usuario
	  if($_SESSION["admin_usuario"] == 0)
	  {
		header ("Location: mi_mascota.php?recordID=".$_SESSION["id_usuario"]);
	  }
		else {
		header ("Location: panel.php");;
	  }
	  

   }
   else{ 
      echo"<script>alert('La contrasena del usuario no es correcta.'); window.location.href=\"index.php\"</script>"; 
   } 
}
else
{ 
    echo"<script>alert('El usuario no existe.'); window.location.href=\"index.php\"</script>"; 
} 
mysql_close($link); 
?>