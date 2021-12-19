<?php
include "header.php";
?>
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
							<li class="active">Shipping</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->
    <?php if(isset($_SESSION['user'])): ?>
<h2 class="text-center">Danh sách đơn hàng đã đặt</h2>
<div class="container"> 
 <table id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <tr> 
    <th style="width:15%">Thời Gian Đặt</th> 
    <th style="width:20%">Tên Người Nhận</th> 
    <th style="width:25%">Địa Chỉ Giao</th> 
    <th style="width:15%">Ghi Chú</th> 
    <th style="width:15%">Tổng Cộng</th> 
   </tr> 
  </thead> 
  <tbody><tr> 
   <?php
  
   $user_name = $_SESSION['user'];
   $getDSHoaDon = $hoadon -> layHoaDonTheoTen($user_name);
   foreach ($getDSHoaDon as $value):
  ?>

   <td><H4><?php echo $value['ThoiDiemDatHang'] ?></H4></td> 
   </td> 
   <td><?php echo $value['fullname'] ?></td> 
   </td> 
   <td><?php echo $value['diachi'] ?></td> 
   </td> 
   <td><?php echo $value['ghichucuakhach'] ?></td> 
   </td> 
   <td data-th="Price"><?php echo number_format($value['tongcong'])?> đ</td> 
   </td> 
   <td class="actions" data-th="">
    <button class="btn btn-info btn-sm" ><a href="chitiethoadon.php?idHD=<?php echo $value['idHD']?>"><i class="fa fa-edit"></i></a>
    </button>
   </td>
  </tr>
  </tbody>
  <?php endforeach ; ?>
  <tfoot> 
   <tr> 
    <td><a href="index.php" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục xem sản phẩm</a>
    </td> 
    <td colspan="2" class="hidden-xs"> </td> 
   </tr> 
  </tfoot> 
 </table>
<?php else: ?>
  <div style="padding-bottom: 50px"><h2 class="text-center"><a href="login/index.php">Đăng Nhập</a> Trước cái đã bạn</h2></div>
<?php endif; ?>
</div>
<?php include "footer.html" ?>