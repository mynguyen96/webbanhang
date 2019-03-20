<div class="content">
	<?php
		if(isset($_GET['quanly'])){
			$tam=$_GET['quanly'];
		}else{
			$tam='';
		}if($tam=='quanlyloaisp'){
			include("modules/quanlyloaisp/main.php");
		}if($tam=='quanlychitietsp'){
			include("modules/quanlychitietsp/main.php");
		}
	?>
<div class="clear"></div>