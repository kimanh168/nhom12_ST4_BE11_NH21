<?php 
class Product extends Db{
    public function getAllProducts ()
    {
        $sql = self::$connection->prepare("SELECT * 
        FROM products,manufactures,protypes
        WHERE products.manu_id=manufactures.manu_id
        AND products.type_id=protypes.type_id
        ");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function get10Product( $page, $perPage)
    {
        $fristLink = ($page -1) * $perPage;
        $sql = self::$connection->prepare("SELECT * 
        FROM products,manufactures,protypes
        WHERE products.manu_id=manufactures.manu_id
        AND products.type_id=protypes.type_id
        LIMIT ?, ?");
        $sql->bind_param("ii",$fristLink, $perPage);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    function paginate($url, $total, $perPage,$page)
    {
        $totalLinks = ceil($total/$perPage);
 	    $link ="";
    	for($j=1; $j <= $totalLinks ; $j++)
     	{
            if($j == $page){
      		    $link = $link."<li  class='active' > <a  href='$url?page=$j'> $j </a></li>";
            }else{
                $link = $link."<li> <a  href='$url?page=$j'> $j </a></li>";
            }
     	}
     	return $link;
    }
    public function addProduct($name,$manu_id,$type_id,$price,$image,$description,$feature)
    {
        $sql = self::$connection->prepare("INSERT 
        INTO `products`(`name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`) 
        VALUES (?,?,?,?,?,?,?)");
        $sql->bind_param("siiissi", $name,$manu_id,$type_id,$price,$image,$description,$feature);
        return $sql->execute(); //return an object
    }
    public function deleteProduct($id)
    {
        $sql = self::$connection->prepare("DELETE FROM `products` WHERE `id`=?");
        $sql->bind_param("i",$id);
        return  $sql->execute();
    } 
}