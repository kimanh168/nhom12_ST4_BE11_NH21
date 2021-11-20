<?php 
class Product extends Db{
    public function getAllProducts ()
    {
        $sql = self::$connection->prepare("SELECT * 
        FROM products,manufactures,protypes
        WHERE products.manu_id=manufactures.manu_id
        AND products.type_id=protypes.type_id");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }

    public function layLoai()
    {
        $sql = self::$connection->prepare("SELECT * FROM `manufactures`");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }  
    public function layHang()
    {
        $sql = self::$connection->prepare("SELECT * FROM `protypes`");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }  

    public function addProduct($name,$manuname,$typename,$price,$description,$feature)
    {
        $sql = self::$connection->prepare("INSERT INTO `products`( `id`,`name`, `manu_id`, `type_id`, `price`, `pro_image`, `description`, `feature`, `created_at`) VALUES ('NULL','$name','$manuname','$typename','$price','NULL','$description','$feature','NUll')");
        $sql->execute();
        return $sql; 
    }  

    public function deleteProduct($id)
    {
        $sql = self::$connection->prepare("DELETE FROM `products` WHERE `id`='$id'");
        $sql->execute();
        return $sql; 
    }  
}