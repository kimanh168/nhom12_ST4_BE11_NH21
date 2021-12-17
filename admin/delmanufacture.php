<?php
require "config.php";
require "models/db.php";
require "models/product.php";
require "models/manufacture.php";

$manufacture = new Manufacture;

if(isset($_GET['manu_id'])){
        $manufacture -> deleteManufacture($_GET['manu_id']);
        header('location:manufactures.php');
    }
 
?>