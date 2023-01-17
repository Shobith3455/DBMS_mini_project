<?php session_start(); ?>
<?php include '../db.php'; ?>




<!DOCTYPE html>
<html lang="en">
  <head>
    <!--favicon-->
    <link rel="icon" href="../mlogo.ico" >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard</title>
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
		  $Welcome = "Welcome";
          echo "<h1>" . $Welcome."," . "<br>".$_SESSION['name']. "</h1>";
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
            <li><a href="applied_comp.php"><i class="fa  fa-fw"></i>Applied Companies</a></li>
            <li><a href="s_eligibility.php"><i class="fa  fa-fw"></i>Students Eligibility</a></li>
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



              <?php

                  $sapid=$_SESSION['sapid'];

                  $query="SELECT * FROM student WHERE sapid='{$sapid}'";
                  $select_all_posts_query=mysqli_query($connection,$query);
                    while($row=mysqli_fetch_assoc($select_all_posts_query)){

                              $email=$row['email'];
                              $dept=$row['dept'];
                              $contact=$row['contact'];
                              $name=$row['name'];
                              $cgpa=$row['cgpa'];
                              $sapid=$row['sapid'];
                              $s_id=$row['s_id'];
                    }
              ?>



              <div class="panel panel-default table-responsive" style="border:2px solid cyan;padding:10px;margin:10px;box-shadow:3px 3px">


                <h1 style="text-decoration:underline"><?php echo $name ?></h1>
                <p><b>Email:</b><?php echo $email ?></p>
                <p><b>Contact:</b><?php echo $contact ?></p>
                <p><b>Registration Id:</b><?php echo $s_id ?></p>
                <p><b>CGPA:</b><?php echo $cgpa ?></p>
                <p><B>SAP ID:</b><?php echo $sapid ?></p>
                <p><b>Department:</b><?php echo $dept ?></p>



                    </div>







			  </div>
			  </div>
			  </div>



        </div>
      </div>
    </div>
  </body>
</html>
