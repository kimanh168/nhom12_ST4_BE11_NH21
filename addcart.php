<?php
    session_start();
    $id = isset($_GET['id']) ? (int)$_GET['id'] : '';
?>
<?php
require "config.php";
require "models/db.php";
require "models/product.php";
require "models/protype.php";
//
$product = new Product;
	
	if(isset($_GET['id'])):
        $laySPTheoID = $product -> getProductById($id);
		foreach($laySPTheoID as $value):
			if($value['id'] == $_GET['id']):
?>
<?php
    //b2: kiem tra session:
    if(isset($_SESSION['cart']))
    {
        if(isset($_SESSION['cart'][$id])){
            $_SESSION['cart'][$id]['qty'] += 1;
        }
        else{
            $_SESSION['cart'][$id]['qty'] = 1;
        }
        $_SESSION['cart'][$id]['id'] = $value['id'];
        $_SESSION['cart'][$id]['name'] = $value['name'];
        $_SESSION['cart'][$id]['price'] = $value['price'];
        $_SESSION['cart'][$id]['image'] = $value['image'];
        $_SESSION['cart'][$id]['description'] = $value['description'];
        $_SESSION['cart'][$id]['cost'] = $value['price'] * $_SESSION['cart'][$id]['qty'];
    }
    else
    {
        $_SESSION['cart'][$id]['id'] = $value['id'];
        $_SESSION['cart'][$id]['qty'] = 1;
        $_SESSION['cart'][$id]['name'] = $value['name'];
        $_SESSION['cart'][$id]['price'] = $value['price'];
        $_SESSION['cart'][$id]['image'] = $value['image'];
        $_SESSION['cart'][$id]['description'] = $value['description'];
        $_SESSION['cart'][$id]['cost'] = $value['price'] * $_SESSION['cart'][$id]['qty'];
    }
    ?>
<?php
	endif;
		endforeach;
	endif;
    header("Location: listcart.php");
?>

    
