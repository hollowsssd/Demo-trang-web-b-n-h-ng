<?php
  require_once("server.php");

  
    $name = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $userId = $_POST['userId'];
    
    // Mã hóa mật khẩu
    $hashed_password = sha1($password);

    $rs=mysqli_query($conn,"select COUNT(*) as 'total' from  khachhang where email='$email' ");
    $row=mysqli_fetch_array($rs);

    // Chuẩn bị truy vấn SQL để thêm người dùng mới
    if((int)$row['total']>0){
      $res["success"] = 2; //email đã tồn tại
 }else{
    $sql = "INSERT INTO khachhang (MaKH, HoTen, Email, MatKhau, DiaChi, GT, NS, CCCD, SDT,quyen) VALUES ('$userId', '$name', '$email', '$hashed_password', null, NULL, null, null, null,1)";

      if (mysqli_query($conn, $sql)) {
          if(mysqli_affected_rows($conn)>0){
              
          $res["success"] = 1; // Đăng ký thành công
          }
          else{
              $res["success"] = 0; // Không có dòng nào bị ảnh hưởng
          }
      } else {
          $res["success"] = 0; // Lỗi khi thực thi truy vấn
      }
    }
  echo  json_encode($res);
  mysqli_close($conn);
  
?>