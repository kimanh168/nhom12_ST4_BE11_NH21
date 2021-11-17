<?php
class Product extends Db
{
    public function getAllProducts ()
    {
        $sql = self::$connection->prepare("SELECT * FROM products");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProductById($id)
    {
        $sql = self::$connection->prepare("SELECT * from products as PR Join protypes as OD on PR.type_id= OD.type_id JOIN manufactures as MN on PR.manu_id = MN.manu_id WHERE id = ?");
        $sql->bind_param("i",$id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }  

    public function getProductByType($type_id)
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE type_id = ?");
        $sql->bind_param("i", $type_id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }

    public function get3ProductByType($type_id, $page, $perPage)
    {
        $fristLink = ($page -1) * $perPage;
        $sql = self::$connection->prepare("SELECT * FROM products WHERE type_id = ? LIMIT ?, ?");
        $sql->bind_param("iii", $type_id,$fristLink, $perPage);
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
      		    $link = $link."<li  class='active' > <a  href='$url&page=$j'> $j </a></li>";
            }else{
                $link = $link."<li> <a  href='$url&page=$j'> $j </a></li>";
            }
     	}
     	return $link;
    }


    public function laySanPhamMoiNhat()
    {
        $sql = self::$connection->prepare("SELECT *FROM products ORDER BY created_at DESC LIMIT 10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }  
    public function laySanPhamNoiBat()
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE feature = 1 ");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    
    public function layDienThoaiMoiNhat()
    {
        $sql = self::$connection->prepare("SELECT *FROM products WHERE type_id=1 ORDER BY created_at DESC LIMIT 10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    } 
    public function layLapTopMoiNhat()
    {
        $sql = self::$connection->prepare("SELECT *FROM products WHERE type_id=2 ORDER BY created_at DESC LIMIT 10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }  
    public function layLoaMoiNhat()
    {
        $sql = self::$connection->prepare("SELECT *FROM products WHERE type_id=3 ORDER BY created_at DESC LIMIT 10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }  
    public function layDienThoai()
    {
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `type_id`= 1 ");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }  
    public function layLapTop()
    {
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `type_id`= 2");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }  
    public function layLoa()
    {
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `type_id`= 3");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }  
    public function search($keyword)
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE `name` LIKE ?");
        $keyword = "%$keyword%";
        $sql->bind_param("s", $keyword);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }

}
