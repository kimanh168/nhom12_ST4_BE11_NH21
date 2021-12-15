<?php include "header.php"; ?>
<?php
if(isset($_SESSION['cart'])) : 
	$total_price = 0;
?>
<body>
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">Checkout</h3>
						<ul class="breadcrumb-tree">
							<li><a href="index.php">Home</a></li>
							<li class="active">Checkout</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
			<form action="addHoaDon.php" method="POST" roles="form" enctype="multipart/form-data">      
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Billing address</h3>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="fullname" placeholder="Full Name">
							</div>
							<div class="form-group">
								<input class="input" type="email" name="email" placeholder="Email">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="address" placeholder="Address">
							</div>
							<div class="form-group">
								<input class="input" type="tel" name="phone" placeholder="Telephone">
							</div>
						</div>
						<!-- /Billing Details -->

						<!-- Shiping Details -->
						<div class="shiping-details">
							<div class="section-title">
								<h3 class="title">Shiping address</h3>
							</div>
							<div class="input-checkbox">
								<input type="checkbox" id="shiping-address" name="shiping-address">
								<label for="shiping-address">
									<span></span>
									Ship to a diffrent address?
								</label>
								<div class="caption">
									<div class="form-group">
										<input class="input" type="text" name="fullnamenh" placeholder="Full Name">
									</div>
									<div class="form-group">
										<input class="input" type="email" name="emailnh" placeholder="Email">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="addressnh" placeholder="Address">
									</div>
									<div class="form-group">
										<input class="input" type="tel" name="phonenh" placeholder="Telephone">
									</div>
								</div>
							</div>
						</div>
						<!-- /Shiping Details -->

						<!-- Order notes -->
						<div class="order-notes">
							<textarea value=" " name="note" class="input" placeholder="Order Notes"></textarea>
						</div>
						<!-- /Order notes -->
					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">Your Order</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div><strong>PRODUCT</strong></div>
								<div><strong>TOTAL</strong></div>
							</div>
							<?php foreach($_SESSION['cart'] as $key => $val ) : ?>
							<div class="order-products">
								<div class="order-col">
									<div><?php echo $val['qty'] ?>x <?php echo $val['name'] ?></div>
									<div><?php echo number_format($val['price']) ?>đ</div>
								</div>
							</div>
							<?php
    							$total_price += ($val['price']*$val['qty']);
   							?>
							<?php endforeach ; ?>
							<div class="order-col">
								<div><strong>TOTAL</strong></div>
								<div><strong class="order-total"><?php echo number_format($total_price)?>đ</strong></div>
							</div>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="terms">
							<label for="terms">
								<span></span>
								I've read and accept the <a href="#">terms & conditions</a>
							</label>
						</div>
						<input type="submit" value="Place order"  name="submit" class="primary-btn order-submit">
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</form>
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
</body>

<?php else :?>
		<h3 class="text-center">Your checkout is empty!</h3>
<?php endif; ?>
<?php include "footer.html" ?>

