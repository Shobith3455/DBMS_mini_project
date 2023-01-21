<?php session_start(); ?>
<?php include '../db.php'; ?>




<!DOCTYPE html>
<html lang="en">
  <head>
    <!--favicon-->
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Dashboard</title>
    <link rel="icon" href="../mlogo.ico" >
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">
</head>
  <body>
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
          <?php
		  $Welcome = "Department";
          echo "<h1>" . $_SESSION['dept'] . "<br>". $Welcome . "</h1>";
		 echo "<br>";

		  ?>
        </header>

        <!-- Search box -->
        <form class="templatemo-search-form" role="search">
          <div class="input-group">
 
          </div>
        </form>
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
          </div>
        <nav class="templatemo-left-nav">
          <ul>
         <ul>
            <li><a href=# class="active" ><i class="fa fa-fw"></i>Dashboard</a></li>
            <li><a href="../"><i class="fa  fa-fw"></i>Home</a></li>
            <li><a href="clist.php"><i class="fa  fa-fw"></i>Companies</a></li>
            <li><a href="applied.php"><i class="fa  fa-fw"></i>Applied Students</a></li>
            <li><a href="selected.php" ><i class="fa  fa-fw"></i>Selected Students</a></li>
            <li><a href="logout.php"><i class="fa  fa-fw"></i>Sign Out</a></li>
          </ul>
        </nav>
      </div>
      <!-- Main content -->
      <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-content-container">

          <div class="templatemo-content-widget no-padding">
		  	<a href="#" class="templatemo-blue-button">PROFILE</a>
            <div class="panel panel-default table-responsive">

<br>
              <?php

                  $dept=$_SESSION['dept'];

                  $query="SELECT * FROM admin WHERE dept='{$dept}'";
                  $select_all_posts_query=mysqli_query($connection,$query);
                    while($row=mysqli_fetch_assoc($select_all_posts_query)){

                              $email=$row['email'];
                              $id=$row['id'];
                             // $_SESSION['id']=$id;
                    }
              ?>



      <div class="panel panel-default table-responsive" style="border:2px solid cyan;padding:10px;margin:10px;box-shadow:3px 3px">


        <p><b>Email:</b><?php echo $email ?></p>
        <p><b>Department Id:</b><?php echo $id ?></p>
        <p><b>Total Students:</b>560</p>
        <p><b>Students for Placement:</b>180</p>
        <p><b>Placement Incharge:</b>Prof.Narendra U P</p>




      </div>

			  </div>
        <div class="templatemo-content-widget no-padding">
		  	<a <?php echo "href=update_elli.php?aid=".$id.""?> class="templatemo-blue-button">update Eligibility</a>
        </div>       


			  </div>
			  </div>



        </div>
      </div>
    </div>
  </body>
</html>
