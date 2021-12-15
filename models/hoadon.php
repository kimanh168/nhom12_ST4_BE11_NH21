<?php
class HoaDon extends Db
{
    public function addHoaDon($thoigian,$user_name,$fullname,$email,$dienthoai,$diachi,$ghichu,$tongcong)
    {
        $sql = self::$connection->prepare("INSERT INTO `hoadon`(`ThoiDiemDatHang`, `user_name`, `fullname`, `email`, `dienthoai`, `diachi`, `ghichucuakhach`, `tongcong`) VALUES (?,?,?,?,?,?,?,?)");
        $sql->bind_param("sssssssi",$thoigian,$user_name,$fullname,$email,$dienthoai,$diachi,$ghichu,$tongcong);
        return $sql->execute(); //return an object
    }
    public function addCTHoaDon($user_name,$tensp,$soluong,$giasp,$hinhsp,$tongcong)
    {
        $sql = self::$connection->prepare(" INSERT INTO `chitiethd`(`user_name`, `tensp`, `soluongsp`, `giasp`, `hinhsp`, `tongtien`) VALUES (?,?,?,?,?,?)");
        $sql->bind_param("ssiisi", $user_name,$tensp,$soluong,$giasp,$hinhsp,$tongcong);
        return $sql->execute(); //return an object
    }
}