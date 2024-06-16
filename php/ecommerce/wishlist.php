<?php 
require('top.php');
if(!isset($_SESSION['USER_LOGIN'])){
	?>
	<script>
	window.location.href='index.php';
	</script>
	<?php
}
$uid=$_SESSION['USER_ID'];

$res=mysqli_query($con,"select product.name,product.image,product_attributes.price,product_attributes.mrp,product.id as pid,wishlist.id from product,wishlist,product_attributes where wishlist.product_id=product.id and wishlist.user_id='$uid' and product_attributes.product_id=product.id group by product_attributes.product_id");
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
    margin-right: 15px;
}

.table-content table td input {
    background: #e1b3b9 none repeat scroll 0 0;
    border: medium none;
    border-radius: 3px;
    color: #6f6f6f;
    font-size: 15px;
    font-weight: normal;
    height: 40px;
    padding: 0 5px 0 10px;
    width: 60px;
}

.table-content table td input {
    background: #f8e6e8 none repeat scroll 0 0;
    border: medium none;
    border-radius: 3px;
    color: #6f6f6f;
    font-size: 15px;
    font-weight: normal;
    height: 40px;
    padding: 0 5px 0 10px;
    width: 60px;
}

.buttons-cart a {
    background: #f8e6e8 none repeat scroll 0 0;
    color: #3f3f3f;
    font-family: 'Poppins', sans-serif;
    font-size: 12px;
    font-weight: 500;
    height: 62px;
    line-height: 62px;
    padding: 0 45px;
    text-transform: uppercase;
    display: inline-block;
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
                                  <span class="breadcrumb-item active">Wishlist</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- cart-main-area start -->
        <div class="cart-main-area ptb--100 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <form action="#">               
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">products</th>
                                            <th class="product-name">name of products</th>
                                            <th class="product-name">Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
										<?php
										while($row=mysqli_fetch_assoc($res)){
										?>
											<tr>
												<td class="product-thumbnail"><a href="#"><img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$row['image']?>"  /></a></td>
												<td class="product-name"><a href="#"><?php echo $row['name']?></a>
													<ul  class="pro__prize">
														<li class="old__prize"><?php echo $row['mrp']?></li>
														<li><?php echo $row['price']?></li>
													</ul>
												</td>
												
												<td class="product-remove"><a href="wishlist.php?wishlist_id=<?php echo $row['id']?>"><i class="icon-trash icons"></i></a></td>

											</tr>
											<?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="buttons-cart--inner">
                                        <div class="buttons-cart">
                                            <a href="<?php echo SITE_PATH?>">Continue Shopping</a>
                                        </div>
                                        <div class="buttons-cart checkout--btn">
                                            <a href="<?php echo SITE_PATH?>checkout.php">checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
        </div>
        
		<input type="hidden" id="qty" value="1"/>						
<?php require('footer.php')?>        