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
           <li><a href="hello.php"  ><i class="fa fa-fw"></i>Dashboard</a></li>
           <li><a href="app_students.php"><i class="fa  fa-fw"></i>Applied Students</a></li>
           <li><a href=# class="active"><i class="fa  fa-fw"></i>Company Eligibility</a></li>
           <li><a href="analysis.php"><i class="fa  fa-fw"></i>analysis</a></li>
           <li><a href="logout.php"><i class="fa  fa-fw"></i>Sign Out</a></li>
          </ul>
        </nav>
      </div>
      <!-- Main content -->
      <div class="templatemo-content col-1 light-gray-bg">
                <div class="templatemo-content-container">
          <div class="templatemo-content-widget no-padding">
		  	<a href="#" class="templatemo-blue-button">eligibility criteria</a>
            <div class="panel panel-default table-responsive">
            <div class="panel panel-default table-responsive" style="border:2px solid cyan;padding:10px;margin:10px;box-shadow:3px 3px">

            <p>1.Registered companies MITE  are expected to submit the form duly by 19th February.</p>

            <P>2.Sponsored companies, i.e. companies under QIP or those who have signed any bond  at the
               MITE must produce No Objection Certificate from the concerned authorities/ agencies prior to 
               registering with SPO.</p>

            <P>3.Students can participate in/register for placements only once during their stay.</p>


            <P>4.Every company should be ISO Registered</p>
            <P>5.Company should offer minimum annual package of INR.400000</p>

            <P>6.The last date to de-register from placements is March 25th, 2023.
               You need to drop a mail to placement@mite.ac.in stating your wtihdrawl.
                Also, you have to preserve the fee receipt so that you do not have to pay 
                the registration fees when you appear for placements next year.</P>

            <P>7.Companies who does not select interns in academic year 2023-24,
               can either sit for Internships or placements for the session 2023-24.</P>


        </div>



			  </div>
			  </div>
			  </div>



        </div>
      </div>
    </div>
  </body>
</html>
