<?php
//vars

//$to = explode(',', $_POST['to'] );
$destino = "info@olimarteam.com";
$nombre = $_POST["name"];
$email = $_POST["email"];
$msg = $_POST["comments"];
$asunto = "Comentario desde olimarteam.com";

$from = "From:". "michael@ubuntu.olimarteam.com";

$contenido = "Nombre: " .$nombre . "\nEmail: " . $email . "\nMensaje: " . $msg;

//data
//$msg = "NAME: "  .$_POST['name']    ."<br>\n";
//$msg .= "EMAIL: "  .$_POST['email']    ."<br>\n";
//$msg .= "WEBSITE: "  .$_POST['web']    ."<br>\n";
//$msg .= "COMMENTS: "  .$_POST['comments']    ."<br>\n";

//Headers
//$headers  = "MIME-Version: 1.0\r\n";
//$headers .= "Content-type: text/html; charset=UTF-8\r\n";
//$headers .= "From: <".$from. ">" ;


//send mail
   mail($destino, $asunto, $contenido, $from);
   header("Location:index_envio_ok.php");
?>
