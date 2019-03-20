<?php
	include("../config.php");
	$id= isset($_GET['id']) ? $_GET['id'] : "";
	$tensp=$_POST['tensp'];
	$mota=$_POST['motasp'];
	$gia=$_POST['gia'];
	$loaisp=$_POST['loaisp'];
	$hinhanh=$_FILES['hinhanh']['name'];
	$hinhanh_tmp=$_FILES['hinhanh']['tmp_name'];
	$thutu=$_POST['thutu'];
	move_uploaded_file($hinhanh_tmp, 'uploads/'.$hinhanh);
	if(isset($_POST['them'])){
		$sql="insert into chitietsp (tensp,thutu,mota,gia,id_loaisp,hinhanh) values ('$tensp','$thutu','$mota','$gia','$loaisp','$hinhanh')";
 
		mysql_query($sql);
		header('location:../../index.php?quanly=quanlychitietsp&ac=them');
	}elseif (isset($_POST['sua'])) {
		//sua
		if($hinhanh != ''){
		$sql="update chitietsp set tensp='$tensp',thutu='$thutu',mota='$mota',gia='$gia',id_loaisp='$loaisp',hinhanh='$hinhanh' where id_sp='$id'";
		}else{
			$sql="update chitietsp set tensp='$tensp',thutu='$thutu',mota='$mota',gia='$gia',id_loaisp='$loaisp' where id_sp='$id'";
		}
		//var_dump($_POST);
		mysql_query($sql);
		header('location:../../index.php?quanly=quanlychitietsp&ac=them');	
	}else{
		//xoa
		$sql="delete from chitietsp where id_sp='$id'";
		
		mysql_query($sql);
		header('location:../../index.php?quanly=quanlychitietsp&ac=them');
	}
?>
