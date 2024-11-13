<?php
    require_once("server.php");
    $search=$_GET['search'];
    $sql="SELECT m.MaMH,m.TenMH,m.MoTa,m.HinhAnh,m.Gia,m.MauSac,m.MaLoai,m.MaCollab,n.TenLoai FROM mathang m,loaimh n WHERE m.MaLoai = n.MaLoai AND (m.TenMH LIKE '%$search%' OR m.MaCollab = '$search')";
   
	    $rs=mysqli_query($conn,$sql);//bộ resultset
        $mang=array();
	    while ($rows=mysqli_fetch_array($rs)){	
    
            $usertemp['MaMH']=$rows["MaMH"];
            $usertemp['TenMH']=$rows["TenMH"];
            $usertemp['MoTa']=$rows["MoTa"];
            $usertemp['HinhAnh']=$rows["HinhAnh"];
            $usertemp['Gia']=$rows["Gia"];
            $usertemp['MauSac']=$rows["MauSac"];
            $usertemp['MaLoai']=$rows["MaLoai"];
            $usertemp['MaCollab']=$rows["MaCollab"];
            $usertemp['TenLoai']=$rows["TenLoai"];
            array_push($mang,$usertemp);  
        }
        $jsondata['items'] =$mang;	
        echo json_encode($jsondata); //trả về cho client 1 chuỗi json dạng mảng
        mysqli_close($conn);
?> 