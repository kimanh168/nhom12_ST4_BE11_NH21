<?php $page = 'index';include "header.php"; ?>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Chi Tiết Hóa Đơn</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Chi Tiết Hóa Đơn</li>
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
          <h3 class="card-title">Mã Hóa Đơn: <?php echo $_GET['idHD'] ?></h3>

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
                        <th style="width:25%">Tên sản phẩm</th> 
                        <th style="width:20%">Ảnh sản phẩm</th> 
                        <th style="width:10%">Giá</th> 
                        <th style="width:15%">Số lượng</th> 
                        <th style="width:30%">Thành tiền</th> 
                  </tr>
              </thead>
              <tbody>
                  <tr>
                    <?php 
                        $user_name = $_GET['user'];
                        $getDSCTHoaDon = $hoadon -> layCTHoaDon($user_name,$_GET['idHD']);
                        foreach ($getDSCTHoaDon as $value):
                    ?> 
                      <td><?php echo $value['tensp'] ?></td>
                      <td><img src="../img/<?php echo $value['hinhsp'] ?>" style="width: 70px" alt=""></td>
                      <td class="project_progress"><?php echo number_format($value['giasp']) ?>VND</td>
                      <td class="project_progress"><?php echo $value['soluongsp'] ?></td>
                      <td class="project_progress"><?php echo number_format($value['tongtien'])?>VND</td>
                  </tr>
                  <?php endforeach; ?>
              </tbody>             
          </table>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
      <div class="row">
        <div class="col-12">
          <a href="danhsachHoaDon.php" class="btn btn-secondary">Cancel</a>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include "footer.html" ?>