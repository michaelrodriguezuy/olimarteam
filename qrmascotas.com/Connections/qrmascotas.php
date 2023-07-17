<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_qrmascotas = "localhost";
$database_qrmascotas = "codigosqr";
$username_qrmascotas = "root";
$password_qrmascotas = "yago4356";
$qrmascotas = mysql_pconnect($hostname_qrmascotas, $username_qrmascotas, $password_qrmascotas) or trigger_error(mysql_error(),E_USER_ERROR); 
?>