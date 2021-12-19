<?php 
$page = 'index';
include "header.php" ;
?>
  <!-- Content Wrapper. Contains page content -->
  <link rel="stylesheet" href="dist/css/phantrang.css">
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Danh Sách Đơn Đặt Hàng</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Danh Sách Đơn Đặt Hàng</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Đơn Đặt Hàng</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body p-0">
          <table class="table table-striped projects">
              <thead>
                  <tr>
                      <th style="width: 1%">ID_HĐ</th>
                      <th style="width: 10%">Time</th>
                      <th style="width: 10%">User Name</th>
                      <th style="width: 20%">Full Name</th>
                      <th style="width: 20%">Address</th>
                      <th style="width: 15%">Phone</th>
                      <th style="width: 15%">Total</th>
                  </tr>
              </thead>
              <tbody>
                  <?php 

                    $getAllhoadon = $hoadon -> getAllHoaDon();
                    // hiển thị 10 sản phẩm trên 1 trang
                    $perPage = 10; 				
                    // Lấy số trang trên thanh địa chỉ
                    $page = isset($_GET['page'])?$_GET['page']:1; 			
                    // Tính tổng số dòng, ví dụ kết quả là 18
                    $total = count($getAllhoadon); 					
                    // lấy đường dẫn đến file hiện hành
                    $url = $_SERVER['PHP_SELF'];	
                    
                    $get10hoadon = $hoadon -> get10HoaDon($page,$perPage);
                    foreach($get10hoadon as $value):
                    
                  ?>
                  <tr>
                      <td><?php echo $value['idHD'] ?></td>
                      <td class="project_progress"><?php echo $value['ThoiDiemDatHang'] ?></td>
                      <td class="project_progress"><?php echo $value['user_name'] ?></td>
                      <td class="project_progress"><?php echo $value['fullname'] ?></td>
                      <td class="project_progress"><?php echo $value['diachi'] ?></td>
                      <td class="project_progress"><?php echo $value['dienthoai'] ?></td>
                      <td class="project_progress"><?php echo number_format($value['tongcong'])?> VND</td>
                      <td class="project-actions text-right">
                          <a class="btn btn-danger btn-sm" href="delDonDat.php?username=<?php echo $value['user_name'] ?>&&thoigian=<?php echo $value['ThoiDiemDatHang'] ?>">
                              <i class="fas fa-trash">
                              </i>
                              Delete
                          </a>
                          <a class="btn btn-info btn-sm" href="chitiethd.php?user=<?php echo $value['user_name']?>&&idHD=<?php echo $value['idHD']?>">
                              <i class="fas fa-pencil-alt">
                              </i>
                              Detail
                          </a>
                      </td>
                  </tr>
                  <?php endforeach; ?>
              </tbody>             
          </table>
                  <!-- store bottom filter -->
                  <div class="container">
                  <div class="flex">
							    <ul class="store-pagination">
                  <?php echo $product->paginate($url, $total, $perPage, $page); ?>
								  <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                  <div class="bar"></div>
							    </ul>
						      </div>
                  </div>
                  
						      <!-- /store bottom filter -->
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include "footer.html" ?>