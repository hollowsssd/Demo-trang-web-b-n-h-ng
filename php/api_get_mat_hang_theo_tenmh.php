<?php
    require_once("server.php");
    $TenMH=$_GET['TenMH'];
    $sql="SELECT m.MaMH,m.TenMH,m.MoTa,m.HinhAnh,m.Gia,m.MauSac,m.MaLoai,m.MaCollab,n.TenLoai,c.MaKT,c.SLMH,k.TTKT FROM mathang m,loaimh n,ctkt c, kichthuoc k WHERE m.MaLoai = n.MaLoai AND m.MaMH = c.MaMH AND c.MaKT = k.MaKT AND m.TenMH='".$TenMH."' ORDER BY k.TTKT ASC";
   
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
            $usertemp['MaKT']=$rows["MaKT"];
            $usertemp['SLMH']=$rows["SLMH"];
            $usertemp['TTKT']=$rows["TTKT"];
            array_push($mang,$usertemp);  
        }
        $jsondata['items'] =$mang;	
        echo json_encode($jsondata); //trả về cho client 1 chuỗi json dạng mảng
        mysqli_close($conn);
?> 