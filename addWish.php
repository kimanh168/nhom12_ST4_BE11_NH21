<?php
    session_start();
?>
<?php
require "config.php";
require "models/db.php";
require "models/product.php";
require "models/wishlist.php";
//
$product = new Product;
$withlist = new Wishlist;
?>
<?php
    if(isset($_SESSION['user'])){
        $user_name = $_SESSION['user'];
        $sp_id = $_GET['id'];
        if ($withlist -> checkWish($user_name, $sp_id)){
            echo '<script language="javascript">alert("Sản phẩm này đã nằm trong mục yêu thích!"); window.location="index.php";</script>';
        }
        else{
            $addWish = $withlist -> addWish($user_name,$sp_id);
            header("Location: wishlist.php");
        }   
    }
?>

    

