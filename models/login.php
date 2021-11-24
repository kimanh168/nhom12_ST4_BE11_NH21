<?php
    class dangky extends Db{
        public function addUser($name,$pass,$email,$phone)
        {
            $sql = self::$connection->prepare("INSERT INTO `dangky` (`name`, `email`, `phone`, `password`) VALUES ('$name','$email', '$phone','$pass')");
            $sql->execute(); //return an object
            return $sql; //return an array
        }
    }
?>