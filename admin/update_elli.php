

<?php
include '../db.php';
 


$update=false;

    if(isset($_POST['update'])){
  
     
        $text=($_POST['text']);
        //UPDATE table_name SET column1 = value1, column2 = value2 WHERE id=100;
        $sql="UPDATE `update_elli` SET `text` = '$text'";
       
        $updated=mysqli_query($connection,$sql);
        if($updated){
          $update=true;
        }else{
          echo "not updated";
        }
      
}
?>
<?php

$update2=false;
if(isset($_POST['update2'])){



$text1=($_POST['text1']);
$sql="UPDATE `update_elli` SET `text1` = '$text1'";
// $sql=("UPDATE `admin` SET `text1` = '$text1' WHERE `admin`.`id` = $id;");
$updated=mysqli_query($connection,$sql);
if($updated){
  $update2=true;
}else{
  echo "not updated";
}

}
//  $select="SELECT * FROM `admin` where `admin`.`id` = $id "; 
// // $select="SELECT * FROM `admin` where `admin`.`id` = $id; ";   
// $result=mysqli_query($connection,$select);
//     $row=mysqli_fetch_assoc($result);
//      if($row){
//      $t1=$row['text'];
//      $t2=$row['text1'];
//      }
//      $_SESSION['text']=$t1;
//      $_SESSION['text1']=$t2;

//$pdo = new PDO($connection);
// $pdo = new PDO('mysql:host=localhost;dbname=dbms', $username, $password);
// $query = "SELECT * FROM `admin` WHERE `admin`.`id` = :id ORDER BY  ASC";
// $stmt = $pdo->prepare($query);
// $stmt->execute(['id' => $id]);
// $result = $stmt->fetchAll();

// echo $result;

     
?>


<!DOCTYPE html>
<html lang="en">
	<head>
		<!--favicon-->
        <link rel="icon" href="../mlogo.ico" >
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>updation</title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <!-- bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

	    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
	    <link href="css/font-awesome.min.css" rel="stylesheet">
	    <link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/templatemo-style.css" rel="stylesheet">
		<!-- Footer -->
        <link type="text/css" rel="stylesheet" href="../css/style.css">

	</head>

     <style>
      
     </style>

	<body class="light-gray-bg">
        <?php
        if($update==true){
        ?>

                  <div class="alert alert-success alert-dismissible">
                  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                  <strong>Success!</strong> Elligibility criteria for students updated..
                  </div>
            <?php
                    }
            ?>
             <?php
        if($update2==true){
        ?>

                  <div class="alert alert-success alert-dismissible">
                  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                  <strong>Success!</strong> Elligibility criteria for company updated..
                  </div>
            <?php
                    }
            ?>
<div class="container">
        <center ><h2 style="font-weight:bold;text-decoration:underline;margin:3%;">Placements</h2></center>
        <small>The Elligibility criteria for the students :</small>
        <form action="./update_elli.php" method="post">
        <div class="form-group">
            <label for="comment">Enter Here:</label>
            <textarea class="form-control" rows="5" name='text'  id="comment"></textarea>
        </div>
        <div class="form-group">
				<button type="update" name="update" class="templatemo-blue-button width-100">Update</button>
		</div>
    </form>

    <small>The Elligibility criteria for the company :</small>
    <form action="./update_elli.php" method="post">
        <div class="form-group">
            <label for="comment">Enter Here:</label>
            <textarea class="form-control" rows="5" name='text1'  id="comment"></textarea>
        </div>
        <div class="form-group">
				<button type="update2" name="update2" class="templatemo-blue-button width-100">Update</button>
		</div>
    </form>
</div>
        
     
		
        <div class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
			<p>Go back--> <strong><a href="hello.php" class="blue-text">to company Hompage!</a></strong></p>
		</div>

	</body>
</html>
