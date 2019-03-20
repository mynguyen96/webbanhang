<div class="content">
	<div class="left">
		<?php
			include("left/danhsach.php");
		?>
	</div>
	<div class="right">
		<?php
			if(isset($_GET['xem'])){
				$tam = $_GET['xem'];
			}else{
				$tam='';
			}if($tam=='chitietloaisanpham'){
				include("right/chitietloaisanpham.php");
			}elseif($tam=='chitietsanpham'){
				include("right/chitietsanpham.php");
			}else
				include("right/tatcasanpham.php");
		?>
	</div>
</div>
<div class="clear"></div>
