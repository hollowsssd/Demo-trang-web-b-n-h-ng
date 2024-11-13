<?php
require_once("server.php");
  $sql="SELECT MaCollab,TenCollab,TenFullCollab,HinhAnhCollab FROM collab";
   
	$rs=mysqli_query($conn,$sql);//bộ resultset
    $mang=array();
	while ($rows=mysqli_fetch_array($rs)){	
    
        $usertemp['MaCollab']=$rows["MaCollab"];
        $usertemp['TenCollab']=$rows["TenCollab"];
        $usertemp['TenFullCollab']=$rows["TenFullCollab"];
        $usertemp['HinhAnhCollab']=$rows["HinhAnhCollab"];
        array_push($mang,$usertemp);  
    }
    $jsondata['items'] =$mang;	
    echo json_encode($jsondata); //trả về cho client 1 chuỗi json dạng mảng
    mysqli_close($conn);
?> 