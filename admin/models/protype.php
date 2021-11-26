<?php
    class Protype extends Db{
        public function getAllProtype()
        {
            $sql = self::$connection->prepare("SELECT * FROM protypes");
            $sql->execute(); //return an object
            $items = array();
            $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
            return $items; //return an array
        }
        public function addProtype($type_name)
        {
            $sql = self::$connection->prepare("INSERT INTO `protypes`(`type_name`)
            VALUES (?)");
            $sql->bind_param("s", $type_name);
            return $sql->execute(); //return an object
        }
        
        public function deleteProtype($type_id)
        {
            $sql = self::$connection->prepare("DELETE FROM `protypes` WHERE `type_id` =$type_id AND 0>= (SELECT COUNT(type_id) FROM `products` WHERE `type_id`=$type_id)");
            $sql->execute();
            return $sql; 
        }  
    }
?>