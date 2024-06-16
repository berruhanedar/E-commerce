<?php 
require('top.php');
if(!isset($_SESSION['USER_LOGIN'])){
	?>
	<script>
	window.location.href='index.php';
	</script>
	<?php
}
?>


<style>
	.htc__shopping__cart a span.htc__wishlist {
		background: #e1b3b9;
		border-radius: 100%;
		color: #fff;
		font-size: 9px;
		height: 17px;
		line-height: 19px;
		position: absolute;
		right: 18px;
		text-align: center;
		top: -4px;
		width: 17px;
		margin-right:15px;
	}
	
	body {
    font-family: "Poppins", sans-serif;
    color: #666666;
    font-weight: 400;
    font-size: 10px;
    line-height: 24px;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

.wishlist-table table th, .wishlist-table table td {
    border-bottom: 1px solid #c1c1c1;
    border-right: 1px solid #c1c1c1;
    color: #000;
    font-family: "Poppins", sans-serif;
    font-size: 13px;
    font-weight: 600;
    padding: 15px 10px;
    text-align: center;
}


</style>
	
	
	
<div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/banner1.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner">
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.php">Home</a>
                                  <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                                  <span class="breadcrumb-item active">Thank You</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- cart-main-area start -->
        <div class="wishlist-area ptb--100 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="wishlist-content">
                            <form action="#">
                                <div class="wishlist-table table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="product-thumbnail">Order ID</th>
                                                <th class="product-name"><span class="nobr">Order Date</span></th>
                                                <th class="product-price"><span class="nobr"> Address </span></th>
                                                <th class="product-stock-stauts"><span class="nobr"> Payment Type </span></th>
												<th class="product-stock-stauts"><span class="nobr"> Payment Status </span></th>
												<th class="product-stock-stauts"><span class="nobr"> Order Status </span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
											<?php
												$uid=$_SESSION['USER_ID'];
												$res=mysqli_query($con,"select `order`.*,order_status.name as order_status_str from `order`,order_status where `order`.user_id='$uid' and order_status.id=`order`.order_status order by `order`.id desc");
												while($row=mysqli_fetch_assoc($res)){
											?>
												<tr>
													<td class="product-add-to-cart"><a href="my_order_details.php?id=<?php echo $row['id']?>"> <?php echo $row['id']?></a></td>
													<td class="product-name"><?php echo $row['added_on']?></td>
													<td class="product-name">
														<?php echo $row['address']?><br/>
														<?php echo $row['city']?><br/>
														<?php echo $row['pincode']?>
													</td>
													<td class="product-name"><?php echo $row['payment_type']?></td>
													<td class="product-name"><?php echo ucfirst($row['payment_status'])?></td>
													<td class="product-name"><?php echo $row['order_status_str']?></td>
												</tr>
											<?php } ?>

                                        </tbody>
                                        
                                    </table>
                                </div>  
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        						
<?php require('footer.php')?>        