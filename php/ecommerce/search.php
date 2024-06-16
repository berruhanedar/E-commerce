<?php 
require('top.php');
$str=mysqli_real_escape_string($con,$_GET['str']);
if($str!=''){
	$get_product=get_product($con,'','','',$str);
}else{
	?>
	<script>
	window.location.href='index.php';
	</script>
	<?php
}										
?>


<style>

.search__area {
    background: #f8e6e8 none repeat scroll 0 0;
    box-shadow: 0 8px 10px rgba(0, 0, 0, 0.08);
    left: 0;
    position: fixed;
    right: 0;
    top: 0;
    -webkit-transform: translateY(-200%);
    transform: translateY(-200%);
    transition: all 300ms ease 0s;
    z-index: 2147483647;


}

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

.search__area {
    background: #f8e6e8 none repeat scroll 0 0;
    box-shadow: 0 8px 10px rgba(0, 0, 0, 0.08);
    left: 0;
    position: fixed;
    right: 0;
    top: 0;
    -webkit-transform: translateY(-200%);
    transform: translateY(-200%);
    transition: all 300ms ease 0s;
    z-index: 2147483647;
}

.fr__product__inner h4 a {
    color: #444;
    font-family: "Poppins", sans-serif;
    font-size: 17px;
    font-weight: 600;
    text-transform: capitalize;
    transition: all 0.3s ease 0s;
}


</style>

<div class="body__overlay"></div>
        
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/banner1.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner">
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.php">Home</a>
                                  <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                                  <span class="breadcrumb-item active">Search</span>
								  <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                                  <span class="breadcrumb-item active"><?php echo $str?></span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Product Grid -->
        <section class="htc__product__grid bg__white ptb--100">
            <div class="container">
                <div class="row">
					<?php if(count($get_product)>0){?>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="htc__product__rightidebar">
                            <!-- Start Product View -->
                            <div class="row">
                                <div class="shop__grid__view__wrap">
                                    <div role="tabpanel" id="grid-view" class="single-grid-view tab-pane fade in active clearfix">
                                        <?php
										foreach($get_product as $list){
										?>
										<!-- Start Single Category -->
										<div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
											<div class="category">
												<div class="ht__cat__thumb">
													<a href="product.php?id=<?php echo $list['id']?>">
														<img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$list['image']?>" alt="product images">
													</a>
												</div>
												<div class="fr__hover__info">
													<ul class="product__action">
														<li><a href="javascript:void(0)" onclick="wishlist_manage('<?php echo $list['id']?>','add')"><i class="icon-heart icons"></i></a></li>
														<li><a href="javascript:void(0)" onclick="manage_cart('<?php echo $list['id']?>','add')"><i class="icon-handbag icons"></i></a></li>
													</ul>
												</div>
												<div class="fr__product__inner">
													<h4><a href="product-details.html"><?php echo $list['name']?></a></h4>
													<ul class="fr__pro__prize">
														<li class="old__prize"><?php echo $list['mrp']?></li>
														<li><?php echo $list['price']?></li>
													</ul>
												</div>
											</div>
										</div>
										<?php } ?>
                                    </div>
							   </div>
                            </div>
                        </div>
                    </div>
					<?php } else { 
						echo "Data not found";
					} ?>
                
				</div>
            </div>
        </section>
        <!-- End Product Grid -->
        <!-- End Banner Area -->
		<input type="hidden" id="qty" value="1"/>
<?php require('footer.php')?>        