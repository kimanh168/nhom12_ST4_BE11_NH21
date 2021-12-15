<?php
require "config.php";
require "models/db.php";
require "models/product.php";
require "models/hoadon.php";
require "models/user.php";
$hoadon = new HoaDon;
session_start();
$tongcong = 0;
if(isset($_SESSION['user']) ){
        $thoigian = date("d/m/Y");
        $user_name = $_SESSION['user'];
        $fullname = $_POST['fullname'];
        $email = $_POST['email'];
        $diachi = $_POST['address'];
        $dienthoai = $_POST['phone'];
        $ghichu = $_POST['note'];
        
        foreach($_SESSION['cart'] as $key => $val ){
            $soluong = $val['qty'];
            $tensp = $val['name'];
            $giasp = $val['price'];
            $hinhsp = $val['image'];
            $total = $val['price']*$val['qty'];
            $hoadon -> addCTHoaDon($user_name,$tensp,$soluong,$giasp,$hinhsp,$total);
            $tongcong += $soluong * $giasp;
        }
        var_dump($thoigian,$user_name,$fullname,$email,$dienthoai,$diachi,$ghichu,$tongcong);
        $hoadon -> addHoaDon($thoigian,$user_name,$fullname,$email,$dienthoai,$diachi,$ghichu,$tongcong);
    

}
?>