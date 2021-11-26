<?php
require "config.php";
require "models/db.php";
require "models/product.php";
require "models/manufacture.php";

$manufacture = new Manufacture;

if(isset($_GET['id'])){
        $manufacture -> deleteManufacture($_GET['id']);
        header('location:manufactures.php');
    }
 
?>