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
            <li><a href="hello.php" ><i class="fa fa-fw"></i>Dashboard</a></li>
            <li><a href="clist.php" class="active"><i class="fa  fa-fw"></i>Companies</a></li>
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
		  	<a href="#" class="templatemo-blue-button">Companies list</a>
            <div class="panel panel-default table-responsive" >
              <?php



                  $query="SELECT * FROM companies";
                  $select_all_posts_query=mysqli_query($connection,$query);
                    while($row=mysqli_fetch_assoc($select_all_posts_query)){

                              $email=$row['email'];
                              $contact=$row['contact'];
                              $name=$row['name'];
                              $intake=$row['intake'];
                              $c_id=$row['c_id'];
                              $type=$row['type'];


?>
                                    <div class="panel panel-default table-responsive" style="border:2px solid cyan;padding:10px;margin:10px;box-shadow:3px 3px">



                                      <h1 style="text-decoration:underline"><?php echo $name ?></h1>
                                      <p><b>Email:</b><?php echo $email ?></p>
                                      <p><b>Contact:</b><?php echo $contact ?></p>
                                      <p><b>Intake:</b><?php echo $intake ?></p>
                                      <p><B>Company Id:</b><?php echo $c_id ?></p>
                                      <p><b>Job type:</b><?php echo $type ?></p>

                                      <a  href=clist.php?c_id=<?php echo $c_id; ?> ><button  type="button" class="templatemo-blue-button width-20" name="apply">Apply</button></a>


                                    </div>



                <?php    }

                  if(isset($_GET['c_id'])){

                      $id=$_GET['c_id'];
                      $sapid=$_SESSION['sapid'];

                      $cquery="SELECT c_id FROM applied_comp WHERE sapid='{$sapid}' AND c_id={$id}";
                      $cresult=mysqli_query($connection,$cquery);
                      if(mysqli_num_rows($cresult)==0){


                        $query="INSERT INTO applied_comp(c_id,sapid) VALUES('{$id}','{$sapid}')";
                        $result=mysqli_query($connection,$query);
                        if(!$result){
                          die("Application Failed ".mysqli_error($connection));
                        }

                      }else{

                        ?>
                          <script>
                            alert('Already Registered!');
                          </script>

                        <?php
                      }

                }
              ?>





			  </div>
			  </div>
			  </div>



        </div>
      </div>
    </div>
  </body>
</html>
