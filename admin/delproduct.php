<?php
require "config.php";
require "models/db.php";
require "models/product.php";
$product = new Product;
    if(isset($_GET['id'])){
        $product -> deleteProduct($_GET['id']); 
        header('location: products.php');      
    }
?>