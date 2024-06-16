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

.fv-btn {
    background: #e1b3b9 none repeat scroll 0 0;
    border: 1px solid #e1b3b9;
    color: #fff;
    font-family: 'Poppins', sans-serif;
    font-size: 14px;
    font-weight: 600;
    height: 50px;
    padding: 0 30px;
    text-transform: uppercase;
    transition: all 0.4s ease 0s;
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
                                  <span class="breadcrumb-item active">Profile</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        
		<!-- Start Contact Area -->
        <section class="htc__contact__area ptb--100 bg__white">
            <div class="container">
                <div class="row">
					<div class="col-md-6">
						<div class="contact-form-wrap mt--60">
							<div class="col-xs-12">
								<div class="contact-title">
									<h2 class="title__line--6">Profile</h2>
								</div>
							</div>
							<div class="col-xs-12">
								<form id="login-form" method="post">
									<div class="single-contact-form">
										<div class="contact-box name">
											<input type="text" name="name" id="name" placeholder="Your Name*" style="width:100%" value="<?php echo $_SESSION['USER_NAME']?>">
										</div>
										<span class="field_error" id="name_error"></span>
									</div>
									
									<div class="contact-btn">
										<button type="button" class="fv-btn" onclick="update_profile()" id="btn_submit">Update</button>
										
									</div>
								</form>
								
								
								
							</div>
						</div> 
                
				</div>
				
				<div class="row">
					<div class="col-md-6">
						<div class="contact-form-wrap mt--60">
							<div class="col-xs-12">
								<div class="contact-title">
									<h2 class="title__line--6">Change Password</h2>
								</div>
							</div>
							<div class="col-xs-12">
								<form method="post" id="frmPassword">
									<div class="single-contact-form">
										<label class="password_label">Current Password</label>
										<div class="contact-box name">
											<input type="password" name="current_password" id="current_password" style="width:100%">
										</div>
										<span class="field_error" id="current_password_error"></span>
									</div>
									<div class="single-contact-form">
										<label class="password_label">New Password</label>
										<div class="contact-box name">
											<input type="password" name="new_password" id="new_password" style="width:100%">
										</div>
										<span class="field_error" id="new_password_error"></span>
									</div>
									<div class="single-contact-form">
										<label class="password_label">Confirm New Password</label>
										<div class="contact-box name">
											<input type="password" name="confirm_new_password" id="confirm_new_password" style="width:100%">
										</div>
										<span class="field_error" id="confirm_new_password_error"></span>
									</div>
									
									<div class="contact-btn">
										<button type="button" class="fv-btn" onclick="update_password()" id="btn_update_password">Update</button>
										
									</div>
								</form>
								
								
								
							</div>
						</div> 
                
				</div>
				

					
            </div>
        </section>
		<script>
		function update_profile(){
			jQuery('.field_error').html('');
			var name=jQuery('#name').val();
			if(name==''){
				jQuery('#name_error').html('Please enter your name');
			}else{
				jQuery('#btn_submit').html('Please wait...');
				jQuery('#btn_submit').attr('disabled',true);
				jQuery.ajax({
					url:'update_profile.php',
					type:'post',
					data:'name='+name,
					success:function(result){
						jQuery('#name_error').html(result);
						jQuery('#btn_submit').html('Update');
						jQuery('#btn_submit').attr('disabled',false);
					}
				})
			}
		}
		
		function update_password(){
			jQuery('.field_error').html('');
			var current_password=jQuery('#current_password').val();
			var new_password=jQuery('#new_password').val();
			var confirm_new_password=jQuery('#confirm_new_password').val();
			var is_error='';
			if(current_password==''){
				jQuery('#current_password_error').html('Please enter password');
				is_error='yes';
			}if(new_password==''){
				jQuery('#new_password_error').html('Please enter password');
				is_error='yes';
			}if(confirm_new_password==''){
				jQuery('#confirm_new_password_error').html('Please enter password');
				is_error='yes';
			}
			
			if(new_password!='' && confirm_new_password!='' && new_password!=confirm_new_password){
				jQuery('#confirm_new_password_error').html('Please enter same password');
				is_error='yes';
			}
			
			if(is_error==''){
				jQuery('#btn_update_password').html('Please wait...');
				jQuery('#btn_update_password').attr('disabled',true);
				jQuery.ajax({
					url:'update_password.php',
					type:'post',
					data:'current_password='+current_password+'&new_password='+new_password,
					success:function(result){
						jQuery('#current_password_error').html(result);
						jQuery('#btn_update_password').html('Update');
						jQuery('#btn_update_password').attr('disabled',false);
						jQuery('#frmPassword')[0].reset();
					}
				})
			}
			
		}
		</script>
<?php require('footer.php')?>        