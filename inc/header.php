<?php
	
    include 'lib/session.php';
    Session::init();
?>
<?php
	
	include 'lib/database.php';
	include 'helpers/format.php';

	spl_autoload_register(function($class){
		include_once "classes/".$class.".php";
	});
		

	$db = new Database();
	$fm = new Format();
	$ct = new cart();
	$us = new user();
	$cs = new customer();
	$cat = new category();
	$product = new product();
?>

<!DOCTYPE HTML>
<head>
<title>TQ Sport</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquerymain.js"></script>
<script src="js/script.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script> 
<script type="text/javascript" src="js/nav-hover.js"></script>
<link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>
<script type="text/javascript">
  $(document).ready(function($){
    $('#dc_mega-menu-orange').dcMegaMenu({rowItems:'4',speed:'fast',effect:'fade'});
  });
</script>
</head>
<body>
  <div class="wrap">
		<div class="header_top">
			<div class="logo">
				<a href="index.php"><img  src="images/logo1.png" alt="" /></a>
			</div>
			  <div class="header_top_right">
			    <div class="search_box">
				    <form>
				    	<input name="search" type="text" value="Tìm kiếm sản phẩm" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tìm sản phẩm';}"><input type="submit" value="Tìm kiếm">
				    </form>
			    </div>
			    <div class="shopping_cart">
					<div class="cart">
						<a href="#" title="View my shopping cart" rel="nofollow">
								<span class="cart_title">Cart: </span>
								<span class="no_product">
									
								<?php
								$check_cart = $ct->check_cart();
								if ($check_cart) {
								 	$sum = Session::get("sum");
								 	$qty = Session::get("qty");
									echo $fm->format_currency($sum).'Đ'.' '.' SL: '.$qty;

								 }else {
								 	echo ' Rỗng';
								 } 
								
								 ?>

								</span>
							</a>
						</div>
			      </div>
			<?php 
				if(isset($_GET['customer_id'])){
					$customer_id = $_GET['customer_id'];
					$delCart = $ct->del_all_data_cart();
					$delCompare = $ct->del_compare($customer_id);
					Session::destroy();
				}
			?>   
		   <div class="login">
			<?php 
			$login_check = Session::get('customer_login');
			if ($login_check==false) {
				echo '<a href="login.php">Đăng nhập</a></div>'; 
			}else {
				?>
				<a href="?customer_id='<?php echo Session::get('customer_id')?>' "><span style="font-size: 72%;"><?php echo Session::get('customer_name'); ?></span></a></div> 
			<?php }
			 ?>

		   	
		 <div class="clear"></div>
	 </div>
	 <div class="clear"></div>
 </div>
<div class="menu">
	
	<ul id="dc_mega-menu-orange" class="dc_mm-orange">
	  <li><a href="index.php">Trang chủ</a></li>
	  <li><a href="products.php">Sản phẩm</a> </li>
	  
	  <?php 
	  $check_cart = $ct->check_cart();
	  if ($check_cart==true) {
	  	echo '<li><a href="cart.php">Giỏ hàng</a></li>';
	  }else {
	  	echo '';
	  }
	   ?>

	  <?php 
	  $customer_id = Session::get('customer_id'); 
	  $check_order = $ct->check_order($customer_id);
	  if ($check_order==true) {
	  	echo '<li><a href="orderdetails.php">Đơn hàng</a></li>';
	  }else {
	  	echo '';
	  }
	   ?>
	  
	  <?php 
	  $login_check = Session::get('customer_login');
	  if ($login_check==false) {
	  	echo '';
	  }else {
	  	echo '<li><a href="profile.php">Thông tin</a></li>';
	  }
	   ?>
	  <?php 
	  $login_check = Session::get('customer_login');
	  if ($login_check) {
	  	echo '<li><a href="compare.php">So sánh</a> </li>';
	  }
	   ?>
	   <?php 
	  $login_check = Session::get('customer_login');
	  if ($login_check) {
	  	echo '<li><a href="wishlist.php">Yêu thích</a> </li>';
	  }
	   ?>
	  
	  <li><a href="contact.php">Liên hệ</a> </li>
	  <div class="clear"></div>
	</ul>
</div>
