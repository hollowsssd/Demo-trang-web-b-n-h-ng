<?php
  require_once("server.php");
  
  $email = $_POST["email"];
  $password = $_POST["password"];
    $pass=sha1($password);
  // Truy vấn để lấy thông tin người dùng dựa trên email
  $sql = "SELECT HoTen, Email, Matkhau,quyen FROM khachhang WHERE Email='$email'";
  $rs = mysqli_query($conn, $sql);
  
  $mang = array();

  // Nếu tìm thấy thông tin người dùng với email đã nhập
  if ($rows = mysqli_fetch_array($rs)) {
      // Kiểm tra mật khẩu nhập vào với mật khẩu đã băm lưu trong database
      if (($pass== $rows["Matkhau"])) {
          $usertemp['HoTen'] = $rows["HoTen"];
          $usertemp['Email'] = $rows["Email"];
          $usertemp['quyen'] = $rows["quyen"];

          array_push($mang, $usertemp);
          //thanh cong
          $res['success'] = 1;
      } else {
          // Mật khẩu không khớp
          $res['success'] = 2;
      }
  } else {
      // Không tìm thấy email
      $res['success'] = 2;
  }

  $res['items'] = $mang;
  echo json_encode($res); // Trả về cho client 1 chuỗi JSON
  
  mysqli_close($conn);
?>