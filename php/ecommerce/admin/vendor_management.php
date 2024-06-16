<?php
require('top.inc.php');
isAdmin();
if(isset($_GET['type']) && $_GET['type']!=''){
	$type=get_safe_value($con,$_GET['type']);
	if($type=='status'){
		$operation=get_safe_value($con,$_GET['operation']);
		$id=get_safe_value($con,$_GET['id']);
		if($operation=='active'){
			$status='1';
		}else{
			$status='0';
		}
		$update_status_sql="update admin_users set status='$status' where id='$id'";
		mysqli_query($con,$update_status_sql);
	}
	
	if($type=='delete'){
		$id=get_safe_value($con,$_GET['id']);
		$delete_sql="delete from admin_users where id='$id'";
		mysqli_query($con,$delete_sql);
	}
}

$sql="select * from admin_users where role=1 order by id desc";
$res=mysqli_query($con,$sql);
?>

<style>


.order-table .badge-delete {
    background: #e1b3b9;
}

.order-table .badge-delete {
    background: #e1b3b9;
}
.order-table .badge-delete {
    background: #e1b3b9;
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

.card-header {
    padding: .75rem 1.25rem;
    margin-bottom: 0;
    background-color: #e1b3b9;
    border-bottom: 1px solid rgba(0, 0, 0, .125);
}

.order-table:after, .order-table:before {
    content: "";
    position: absolute;
    top: 0;
    height: 37px;
    width: 10px;
    background: #fff;
}



</style>

<div class="content pb-0">
	<div class="orders">
	   <div class="row">
		  <div class="col-xl-12">
			 <div class="card">
				<div class="card-body">
				   <h4 class="box-title">Vendor Management </h4>
				   <h4 class="box-link"><a href="manage_vendor_management.php">Add Vendor</a> </h4>
				</div>
				<div class="card-body--">
				   <div class="table-stats order-table ov-h">
					  <table class="table ">
						 <thead>
							<tr>
							   <th class="serial">#</th>
							   <th width="2%">ID</th>
							   <th width="20%">Username</th>
							   <th width="20%">Password</th>
							   <th width="20%">Email</th>
							   <th width="10%">Mobile</th>
							   <th width="26%"></th>
							</tr>
						 </thead>
						 <tbody>
							<?php 
							$i=1;
							while($row=mysqli_fetch_assoc($res)){?>
							<tr>
							   <td class="serial"><?php echo $i?></td>
							   <td><?php echo $row['id']?></td>
							   <td><?php echo $row['username']?></td>
							   <td><?php echo $row['password']?></td>
							   <td><?php echo $row['email']?></td>
							   <td><?php echo $row['mobile']?></td>
							  
							   <td>
								<?php
								if($row['status']==1){
									echo "<span class='badge badge-complete'><a href='?type=status&operation=deactive&id=".$row['id']."'>Active</a></span>&nbsp;";
								}else{
									echo "<span class='badge badge-pending'><a href='?type=status&operation=active&id=".$row['id']."'>Deactive</a></span>&nbsp;";
								}
								echo "<span class='badge badge-edit'><a href='manage_vendor_management.php?id=".$row['id']."'>Edit</a></span>&nbsp;";
								
								echo "<span class='badge badge-delete'><a href='?type=delete&id=".$row['id']."'>Delete</a></span>";
								
								?>
							   </td>
							</tr>
							<?php } ?>
						 </tbody>
					  </table>
				   </div>
				</div>
			 </div>
		  </div>
	   </div>
	</div>
</div>
<?php
require('footer.inc.php');
?>