<?php
require "config.php";
require "models/db.php";
require "models/protype.php";
$protype = new Protype;
if(isset($_GET['id'])){
    $protype -> deleteProtype($_GET['id']); 
}
header('location:protype.php');
?>