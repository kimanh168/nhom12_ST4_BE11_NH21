<?php include "header.php" ?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>

 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="css/style.css"/>

    </head>
	<body>
        <?php
        if(isset($_GET['id'])):
            $id = $_GET['id'];
            $laySanPham=$product->getProductById($id);
                foreach($laySanPham as $value):		
        ?>
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<!--  Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title"><?php echo $value['name'] ?></h3>
							</div>
							<div class="product-img">
								<img src="./img/<?php echo $value['image'] ?>" width="400px">
							</div>
						</div>
						<!--  Details -->
					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">Thông tin</h3>
						</div>
						<div class="order-summary">
                        <div class="order-col">
								<div><strong>Giá</strong></div>
								<div><strong class="order-total"><?php  echo number_format( $value['price'])?>VND</strong></div>
							</div>
							<div class="order-products">
                                <div class="order-col">
								    <div><strong>Loại</strong></div>
								    <div><strong><?php  echo $value['type_name']?></strong></div>
							    </div>
								<div class="order-col">
									<div><strong>Hãng</strong></div>
									<div><strong><?php  echo $value['manu_name']?></strong></div>
								</div>
							</div>
						</div>
						<div class="payment-method">
                        <h4 class="title">Bài Viết Đánh Giá</h4></br>
                        <p><?php echo $value['description'] ?></p>
						</div>
						<a href="#" class="primary-btn order-submit"><i class="fa fa-shopping-cart"></i> add to cart</a>
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
        <?php endforeach; endif ?>
<?php include "footer.html" ?>
