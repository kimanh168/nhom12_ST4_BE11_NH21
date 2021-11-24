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
if (!$username || !$password || !$email || !$phone)
    {
        echo '<script language="javascript">alert("Vui lòng nhập đầy đủ thông tin."); window.location="login.php";</script>';
        exit;
    }
// Mã khóa mật khẩu
 $password = md5($password);

//Kiểm tra email có đúng định dạng hay không
$regex = "/([a-z0-9_]+|[a-z0-9_]+\.[a-z0-9_]+)@(([a-z0-9]|[a-z0-9]+\.[a-z0-9]+)+\.([a-z]{2,4}))/i"; 
if(!preg_match($regex, $email)) { 
    echo '<script language="javascript">alert("Email này không hợp lệ. Vui lòng nhập email khác"); window.location="login.php";</script>';
    exit;
}
$adduser = $newuser ->  addUser($username,$password,$email,$phone);
if($adduser){
        echo '<script language="javascript">alert("Đăng ký thành công!"); window.location="login.php";</script>';
        }
}


?>