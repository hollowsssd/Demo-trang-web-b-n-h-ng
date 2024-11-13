<?php
  require_once("server.php");
  
  $mamh=$_POST['mamh'];	
  
  $rs=mysqli_query($conn,"select COUNT(*) as 'total' from  mathang where mamh='$mamh'");
  $row=mysqli_fetch_array($rs);
  
  if((int)$row['total']>0){
      $sql="delete from mathang where mamh='$mamh'";
      if (mysqli_query($conn, $sql)) {
          if(mysqli_affected_rows($conn)>0){
              
          $res["success"] = 1;//update thành công
          }
          else{
              $res["success"] = 0;//update thất bại
          }
      } else {
          $res["success"] = 0;//update thất bại
      }
  }else{
           $res["success"] = 2;//mamh không tồn tại trong csdl
  }
  echo  json_encode($res);
  mysqli_close($conn);
  
?>