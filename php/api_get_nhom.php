<?php

require_once("server.php");
  $sql="SELECT MaLoai,TenLoai,HinhAnhLMH FROM loaimh";
   
	$rs=mysqli_query($conn,$sql);//bộ resultset
    $mang=array();
	while ($rows=mysqli_fetch_array($rs)){	
    
        $usertemp['MaLoai']=$rows["MaLoai"];
        $usertemp['TenLoai']=$rows["TenLoai"];
        $usertemp['HinhAnhLMH']=$rows["HinhAnhLMH"];
        array_push($mang,$usertemp);  
    }
    $jsondata['items'] =$mang;	
    echo json_encode($jsondata); //trả về cho client 1 chuỗi json dạng mảng
    mysqli_close($conn);
?>  