<?php 
require('top.php');

$resBanner = mysqli_query($con, "SELECT * FROM banner WHERE status='1' ORDER BY order_no ASC");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-ticaret Sayfası</title>
    <style>
        /* CSS kodunu buraya ekleyin */
        .slider__container {
            background-color: #f8e6e8 !important; /* Arka plan rengini ayarlayın */
        }

        /* Buy Now butonunun rengini buraya ekleyin */
        .cr__btn a.buy-now-btn {
            background-color: #f1c7cb !important;
            color: #fff !important;
            padding: 10px 250px !important;
            text-decoration: none !important;
            border-radius: 5px !important;
            line-height: 2; /* Metni düzgün hizalamak için */
        }

        .product__action li a:hover {
            background: #f8e6e8 none repeat scroll 0 0;
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

        .slider__inner h1 {
            color: #030303;
            font-family: "Poppins", sans-serif;
            font-size: 89px;
            margin-bottom: 14px;
            margin-top: 31px;
            text-transform: uppercase;
        }

		
        .cr__btn a.buy-now-btn:hover {
            background-color: #e1b3b9 !important; /* Hover durumunda butonun arka plan rengini ayarlayın */
        }

		
		
        .owl-carousel .owl-nav .owl-next, .owl-carousel .owl-nav .owl-prev {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: #f1c7cb !important;
            color: #fff !important;
            border-radius: 50% !important;
            padding: 2px !important;
            height: 50px;
            width: 50px;
            text-align: center;
            line-height: 50px;
            cursor: pointer;
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            transition: all 0.5s ease 0s;
        }

        .owl-carousel .owl-nav .owl-next:hover, .owl-carousel .owl-nav .owl-prev:hover {
            background-color: #e1b3b9 !important;
        }



        .owl-prev, .owl-next {
            background-color: #f1c7cb !important; /* Okların arka plan rengini ayarlayın */
            color: #fff !important; /* Okların yazı rengini ayarlayın */
            border-radius: 50% !important;
            padding: 2px !important;
        }

        .owl-prev:hover, .owl-next:hover {
            background-color: #e1b3b9 !important; /* Hover durumunda okların arka plan rengini ayarlayın */
        }
		
		
        
        .product__list .cr__btn a.buy-now-btn {
            padding: 10px 20px !important; /* Örnek olarak bu değerleri değiştirin */
            line-height: 1; /* Metni düzgün hizalamak için */
        }
        
        .htc__shopping__cart a span.htc__qua {
            background-color: #e1b3b9; /* Arka plan rengi */
            border-radius: 100%;
            color: #fff; /* Metin rengi */
            font-size: 9px;
            height: 17px;
            line-height: 19px;
            position: absolute;
            right: -5px;
            text-align: center;
            top: -4px;
            width: 17px;
        }

        #scrollUp {
            background: #e1b3b9 none repeat scroll 0 0;
        }

        .fr__btn {
            background-color: #e1b3b9;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px !important;
            line-height: 2; /* Metni düzgün hizalamak için */
        }
        
        .login-register-link {
            font-family: 'Poppins', sans-serif; /* Yazı tipi */
            color: #000; /* Metin rengi */
            text-decoration: none; /* Altı çizgi kaldır */
        }

        .login-register-link:hover {
            color: #c43b68; /* Hover durumunda metin rengi */
        }

        body {
            font-family: 'Old Standard TT', serif; /* Yazı tipi */
            color: #666666; /* Metin rengi */
            font-weight: 400; /* Yazı kalınlığı */
            font-size: 10px; /* Yazı boyutu */
            line-height: 24px; /* Satır yüksekliği */
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        a.mr15 {
            font-family: 'Poppins', sans-serif; /* Yazı tipi */
            color: #c43b68; /* Metin rengi */
            text-decoration: none; /* Altı çizgi kaldır */
            margin-right: 30 px; /* Sağ kenar boşluğu */
        }

        a.mr15:hover {
            color: #b7315b;
        }
        
        .header__account a::before {
            background: #898989 none repeat scroll 0 0;
            content: "";
            height: 20px;
            position: absolute;
            right: 0;
            width: 1px;
        }
        
        .header__search a::before {
            background: #898989 none repeat scroll 0 0;
            content: "";
            height: 20px;
            position: absolute;
            right: 0;
            width: 1px;
        }
        
        .header__account a {
            color: #000;
            font-size: 19px;
            margin-right: 5px;
            padding-right: 10px;
            position: relative;
            line-height: 25px;
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

        body {
            font-family: "Poppins", sans-serif;
            color: #666666;
            font-weight: 400;
            font-size: 10px;
            line-height: 24px;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
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
</head>
<body>
<div class="body__overlay"></div>
<?php if(mysqli_num_rows($resBanner) > 0) { ?>
    <!-- Start Slider Area -->
    <div class="slider__container slider--one bg__cat--3">
        <div class="slide__container slider__activation__wrap owl-carousel">
            <?php 
            $counter = 0;
            while($rowBanner = mysqli_fetch_assoc($resBanner)) { 
                $counter++;
                $btn_link = ($counter == 1) ? "product.php?id=178" : "product.php?id=88";
            ?>
                <div class="single__slide animation__style01 slider__fixed--height">
                    <div class="container">
                        <div class="row align-items__center">
                            <div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
                                <div class="slide">
                                    <div class="slider__inner">
				
                                        <h2><?php echo $rowBanner['heading1'] ?></h2>
                                        <h1><?php echo $rowBanner['heading2'] ?></h1>
                                        <?php if($rowBanner['btn_txt'] != '') { ?>
                                            <div class="cr__btn">
                                                <a class="buy-now-btn" href="<?php echo $btn_link; ?>"><?php echo $rowBanner['btn_txt'] ?></a>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
                                <div class="slide__thumb">
                                    <img src="<?php echo BANNER_SITE_PATH . $rowBanner['image'] ?>">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
    <!-- End Slider Area -->
<?php } ?>

<!-- Start Category Area -->
        <section class="htc__category__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">New Arrivals</h2>
                        </div>
                    </div>
                </div>
                <div class="htc__product__container">
                    <div class="row">
                        <div class="product__list clearfix mt--30">
							<?php
							$get_product=get_product($con,4);
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
											<li><a href="product.php?id=<?php echo $list['id']?>" ><i class="icon-handbag icons"></i></a></li>
										</ul>
									</div>
                                    <div class="fr__product__inner">
                                        <h4><a href="product.php?id=<?php echo $list['id']?>"><?php echo $list['name']?></a></h4>
                                        <ul class="fr__pro__prize">
                                            <li class="old__prize"><?php echo $list['mrp']?></li>
                                            <li><?php echo $list['price']?></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Category -->
							<?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Category Area -->
        <!-- Start Product Area -->
        <section class="ftr__product__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">Best Seller</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="product__list clearfix mt--30">
							<?php
							$get_product=get_product($con,4,'','','','','yes');
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
											<li><a href="product.php?id=<?php echo $list['id']?>" ><i class="icon-handbag icons"></i></a></li>
										</ul>
									</div>
                                    <div class="fr__product__inner">
                                        <h4><a href="product.php?id=<?php echo $list['id']?>"><?php echo $list['name']?></a></h4>
                                        <ul class="fr__pro__prize">
                                            <li class="old__prize"><?php echo $list['mrp']?></li>
                                            <li><?php echo $list['price']?></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Category -->
							<?php } ?>
                        </div>
                </div>
            </div>
        </section>
        <!-- End Product Area -->
		<input type="hidden" id="qty" value="1"/>
<?php require('footer.php')?>        