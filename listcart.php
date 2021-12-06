<?php
    session_start();
?>
<?php
if(isset($_SESSION['cart'])) : 
?>
<?php include "header.php"; ?>
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">Regular Page</h3>
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li class="active">Cart</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->
<h2 class="text-center">Your Cart</h2>
<div class="container"> 
 <table id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <tr> 
    <th style="width:50%">Tên sản phẩm</th> 
    <th style="width:10%">Giá</th> 
    <th style="width:8%">Số lượng</th> 
    <th style="width:22%" class="text-center">Thành tiền</th> 
    <th style="width:10%"> </th> 
   </tr> 
  </thead> 
  <tbody><tr> 
  <?php foreach($_SESSION['cart'] as $key => $val ) :?> 
   <td data-th="Product"> 
    <div class="row">
    <div class="col-sm-2 hidden-xs"><img src="./img/<?php echo $val['image'] ?>" style="width: 70px" alt="">
     </div> 
     <div class="col-sm-10"> 
      <h4 class="nomargin"><?php echo $val['name'] ?></h4> 
      <p><?php echo $val['description'] ?></p> 
     </div> 
    </div> 
   </td> 
   <td data-th="Price"><?php echo number_format($val['price'])?> đ</td> 
   <td data-th="Quantity"><input class="form-control text-center" value="<?php echo $val['qty'] ?>" >
   </td> 
   <td data-th="Subtotal" class="text-center"><?php echo number_format($val['cost'])?> đ</td> 
   <td class="actions" data-th="">
    <button class="btn btn-danger btn-sm" ><a href="delcart.php?id=<?php echo $val['id'] ?>"><i class="fa fa-trash-o"></i></a>
    </button>
   </td>
  </tr> 
  </tbody>
  <?php endforeach ; ?>
  <tfoot> 
   <tr> 
    <td><a href="index.php" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
    </td> 
    <td colspan="2" class="hidden-xs"> </td> 
    <td class="hidden-xs text-center"><strong> đ</strong>

    </td> 
    <td><a href="checkout.php" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
    </td> 
   </tr> 
  </tfoot> 
 </table>
</div>
<?php else :?>
    <p>Không tồn tại giỏ hàng</p>
<?php endif; ?>
<?php include "footer.html" ?>