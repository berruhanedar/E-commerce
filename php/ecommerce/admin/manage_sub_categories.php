<?php
require('top.inc.php');
isAdmin();
$categories='';
$msg='';
$sub_categories='';
if(isset($_GET['id']) && $_GET['id']!=''){
	$id=get_safe_value($con,$_GET['id']);
	$res=mysqli_query($con,"select * from sub_categories where id='$id'");
	$check=mysqli_num_rows($res);
	if($check>0){
		$row=mysqli_fetch_assoc($res);
		$sub_categories=$row['sub_categories'];
		$categories=$row['categories_id'];
	}else{
		header('location:sub_categories.php');
		die();
	}
}

if(isset($_POST['submit'])){
	$categories=get_safe_value($con,$_POST['categories_id']);
	$sub_categories=get_safe_value($con,$_POST['sub_categories']);
	$res=mysqli_query($con,"select * from sub_categories where categories_id='$categories' and sub_categories='$sub_categories'");
	$check=mysqli_num_rows($res);
	if($check>0){
		if(isset($_GET['id']) && $_GET['id']!=''){
			$getData=mysqli_fetch_assoc($res);
			if($id==$getData['id']){
			
			}else{
				$msg="Sub Categories already exist";
			}
		}else{
			$msg="Sub Categories already exist";
		}
	}
	
	if($msg==''){
		if(isset($_GET['id']) && $_GET['id']!=''){
			mysqli_query($con,"update sub_categories set categories_id='$categories',sub_categories='$sub_categories' where id='$id'");
		}else{
			
			mysqli_query($con,"insert into sub_categories(categories_id,sub_categories,status) values('$categories','$sub_categories','1')");
		}
		header('location:sub_categories.php');
		die();
	}
}
?>

<style>
.btn-info {
    color: #fff;
    background-color: #28a745;
    border-color: #17a2b8;
}

.btn-info:hover, .btn-info:focus {
    color: #fff;
    background-color: #28a745; /* Keep green background on hover */
    border-color: #28a745; /* Keep matching border color on hover */
}

.btn-info:active,
.btn-info:focus {
    background-color: #28a745;
    border-color: #28a745;
}

.btn-info:active,
.btn-info:focus,
.btn-info:visited {
    background-color: #28a745 !important;
    border-color: #17a2b8 !important;
    color: #fff !important;
}


.right-panel {
    background: #f8e6e8;
    margin-left: 280px;
    margin-top: 55px;
}


.right-panel .navbar-header {
    width: 100%;
    background-color: #f8e6e8;
    padding: 0 1.25em 0 0;
}


.right-panel header.header {
    background: #f8e6e8;
    border-bottom: 1px solid #fff;
    -webkit-box-shadow: none;
    box-shadow: none;
    clear: both;
    padding: 0 30px;
    height: 55px;
    position: fixed;
    left: 280px;
    left: 0;
    right: 0;
    top: 0;
    z-index: 999;
}

.order-table tr th {
    background: #e1b3b9;
}

.table-stats table th, .table-stats table td {
    border: none;
    border-bottom: 1px solid # #e1b3b9;
    color: #fff;
    font-size: 12px;
    font-weight: 400;
    padding: .75em 1.25em;
    text-transform: uppercase;
}

.order-table:after, .order-table:before {
    content: "";
    position: absolute;
    top: 0;
    height: 37px;
    width: 10px;
    background: #fff;
}

.card-header {
    padding: .75rem 1.25rem;
    margin-bottom: 0;
    background-color: #e1b3b9;
    border-bottom: 1px solid rgba(0, 0, 0, .125);
}


</style>


<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Sub Categories</strong><small> Form</small></div>
                        <form method="post">
							<div class="card-body card-block">
							   <div class="form-group">
									<label for="categories" class=" form-control-label">Categories</label>
									<select name="categories_id" required class="form-control">
										<option value="">Select Categories</option>
										<?php
										$res=mysqli_query($con,"select * from categories where status='1'");
										while($row=mysqli_fetch_assoc($res)){
											if($row['id']==$categories){
												echo "<option value=".$row['id']." selected>".$row['categories']."</option>";
											}else{
												echo "<option value=".$row['id'].">".$row['categories']."</option>";
											}
										}
										?>
									</select>
								</div>
								<div class="form-group">
									<label for="categories" class=" form-control-label">Sub Categories</label>
									<input type="text" name="sub_categories" placeholder="Enter sub categories" class="form-control" required value="<?php echo $sub_categories?>">
								</div>
							   <button id="payment-button" name="submit" type="submit" class="btn btn-lg btn-info btn-block">
							   <span id="payment-button-amount">Submit</span>
							   </button>
							   <div class="field_error"><?php echo $msg?></div>
							</div>
						</form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
<?php
require('footer.inc.php');
?>