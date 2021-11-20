<?php
require "config.php";
require "models/db.php";
require "models/login.php";
$newuser = new dangky;
// Dùng isset để kiểm tra Form
if(isset($_POST['dangky'])){
$username = trim($_POST['username']);
$password = trim($_POST['password']);
$email = trim($_POST['email']);
$phone = trim($_POST['phone']);
$deleteproduct = $newuser ->  addUser($username,$password,$email,$phone);
if($deleteproduct){
        echo '<script language="javascript">alert("Đăng ký thành công!"); window.location="login.php";</script>';
}
}


?>