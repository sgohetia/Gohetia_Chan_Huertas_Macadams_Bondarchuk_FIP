 <?php
 
 //$connect = mysqli_connect('localhost','root','root','brothers_in_arms'); 

 $dsn = "mysql:host=localhost;dbname=brothers_in_arms;charset=utf8mb4";
try {
$connect = new PDO($dsn, 'root', 'root');
} catch (Exception $e) {
  error_log($e->getMessage());
  exit('unable to connect');
}
 ?>