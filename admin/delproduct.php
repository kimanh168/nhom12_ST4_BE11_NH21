<?php
require "config.php";
require "models/db.php";
require "models/product.php";
$product = new Wishlist;
    if(isset($_GET['id'])){
        $product -> deleteProduct($_GET['id']); 
        header('location: products.php');      
    }
?>