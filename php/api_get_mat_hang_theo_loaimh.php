<?php
    require_once("server.php");
    $vt=$_GET['vt'];
    $MaLoai=$_GET['MaLoai'];//láy giá trị mã nhóm được gửi lên từ client
    $sql="SELECT m.MaMH,m.TenMH,m.MoTa,m.HinhAnh,m.Gia,m.MauSac,m.MaLoai,m.MaCollab FROM mathang m, loaimh n WHERE n.MaLoai=m.MaLoai and m.MaLoai='".$MaLoai."'";
   
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
            $usertemp['vt']=$vt;
            array_push($mang,$usertemp);  
        }
        $jsondata['items'] =$mang;	
        echo json_encode($jsondata); //trả về cho client 1 chuỗi json dạng mảng
        mysqli_close($conn);
?>  