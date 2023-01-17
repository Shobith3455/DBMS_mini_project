<?php include '../db.php'; ?>

<?php

$update=false;

   $c_id=$_GET['c_id'];
   $select="SELECT * FROM companies where c_id='$c_id' "; 
   $result=mysqli_query($connection,$select);
   $row=mysqli_fetch_assoc($result);
    if($row){
    $name=$row['name'];
    $email=$row['email'];
    $contact=$row['contact'];
    $intake=$row['intake'];
    $type=$row['type'];
    }
	
    if(isset($_POST['update'])){

        $name=trim($_POST['name']);
        $email=trim($_POST['email']);
        $contact=trim($_POST['contact']);
        $intake=($_POST['intake']);
        $type=($_POST['type']);


        $sql=("UPDATE companies set name='$name',email='$email',contact=$contact,intake=$intake,type='$type'
        where c_id=$c_id");
        $updated=mysqli_query($connection,$sql);
        if($updated){
          $update=true;
        }else{
          echo "not updated";
        }

}
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<!--favicon-->
        <link rel="icon" href="../mlogo.ico" >
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>Company Registration</title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <!-- bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

	    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
	    <link href="css/font-awesome.min.css" rel="stylesheet">
	    <link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/templatemo-style.css" rel="stylesheet">
		<!-- Footer -->
        <link type="text/css" rel="stylesheet" href="../css/style.css">

	</head>
	<body class="light-gray-bg">
        <?php
        if($update==true){
        ?>

                  <div class="alert alert-success alert-dismissible">
                  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                  <strong>Success!</strong> your Signup is complete! you can now login.
                  </div>
            <?php
                    }
            ?>
		
        
        <div class="templatemo-content-widget templatemo-login-widget white-bg">
			<header class="text-center">
	          <div class="square"></div>
	          <h1><b style="font-weight: 600;">profile updation</b></h1>
	        </header>
	        <form method="POST" class="templatemo-login-form" >
	        	<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>
		              	<input type="text" name="name" value=<?php echo $name?> class="form-control" placeholder="Name" >
		          	</div>
	        	</div>
				<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon">@</div>
		              	<input type="email" name="email" value=<?php echo $email?>  class="form-control" placeholder="Email" >
		          	</div>
	        	</div>


				 <div class="form-group">
 					<div class="input-group">
 						<div class="input-group-addon"><i class="fa fa-phone fa-fw"></i></div>
 								<input type="text" name="contact" value=<?php echo $contact?> class="form-control" placeholder="contact" >
 						</div>
 	       </div>

					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon">#</div>
									<input type="text" name="intake" value=<?php echo $intake?> class="form-control" placeholder="intake" >
							</div>
					 </div>

					 <div class="form-group">
						 <div class="input-group">
							 <div class="input-group-addon">J</div>
									 <input type="text" name="type" value=<?php echo $type?> class="form-control" placeholder="Job Type">
							 </div>
						</div>
						
				<div class="form-group">
					<button type="update" name="update" class="templatemo-blue-button width-100">Update</button>
				</div>
	        </form>
		</div>
        <div class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
			<p>Go back--> <strong><a href="hello.php" class="blue-text">to company Hompage!</a></strong></p>
		</div>

	</body>
</html>
