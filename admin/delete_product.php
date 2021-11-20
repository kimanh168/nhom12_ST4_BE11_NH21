<?php
require "config.php";
require "models/db.php";
require "models/product.php";
$product = new Product;
    $id = $_GET['id'];
    $deleteproduct = $product -> deleteProduct($id); 
    if( $deleteproduct){
        header('location: products.php');
    }
?>