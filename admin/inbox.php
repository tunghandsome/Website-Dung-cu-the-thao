<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php 
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../classes/cart.php');
	include_once ($filepath.'/../helpers/format.php');
 ?>
 <?php
    $ct = new cart();
    if(isset($_GET['shiftid'])){
    	$id = $_GET['shiftid'];
    	$proid = $_GET['proid'];
    	$qty = $_GET['qty'];
    	$time = $_GET['time'];
    	$price = $_GET['price'];
    	$shifted = $ct->shifted($id,$proid,$qty,$time,$price);
    }

    if(isset($_GET['delid'])){
    	$id = $_GET['delid'];

    	$time = $_GET['time'];
    	$price = $_GET['price'];
    	$del_shifted = $ct->del_shifted($id,$time,$price);
    }
 
  ?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Đơn hàng</h2>
                <div class="block">
                <?php 
                if (isset($shifted)) {
                	echo $shifted;
                }
                 ?> 
                <?php 
                if (isset($del_shifted)) {
                	echo $del_shifted;
                }
                 ?>         
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>No.</th>
							<th>Ngày đặt</th>
							<th>Sản phẩm</th>
							<th>Số lượng</th>
							<th>Giá</th>
							<th>Khách hàng</th>
							<th>Địa chỉ</th>
							<th>Xử lý</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$ct = new cart();
						$fm = new Format();
						$get_inbox_cart = $ct -> get_inbox_cart();
						if ($get_inbox_cart) {
							$i=0;
							while ($result = $get_inbox_cart->fetch_assoc()) {
								$i++;
							
						 ?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $fm->FormatDate($result['date_order']); ?></td>
							<td><?php echo $result['productName'] ?> </td>
							<td><?php echo $result['quantity'] ?></td>
							<td><?php echo $result['price'].' VNĐ' ?></td>
							<td><?php echo $result['customer_id'] ?></td>
							<td><a href="customer.php?customerid=<?php echo $result['customer_id'] ?>">Xem khách hàng</a></td>
							<td>
								<?php 
								if($result['status']==0){
								 ?>

								<a href="?shiftid=<?php echo $result['id'] ?>&qty=<?php echo $result['quantity'] ?>&proid=<?php echo $result['productId'] ?>&price=<?php echo $result['price']; ?>&time=<?php echo $result['date_order'] ?>">Đang chờ xử lý
								<?php 
								}elseif($result['status']==1) {
								 ?>

								<?php 
								echo 'Đang giao hàng...';
								 ?>
								 
								<?php 
								}elseif($result['status']==2) {

								 ?>
								<a href="?delid=<?php echo $result['id'] ?>&price=<?php echo $result['price']; ?>&time=<?php echo $result['date_order'] ?>">Xóa đơn</a>
								 <?php 
								}
								 ?>
							</td>
						</tr>
						<?php 
						}
						}
						 ?>
					</tbody>
				</table>
               </div>
            </div>
        </div>
<script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();

        $('.datatable').dataTable();
        setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>
