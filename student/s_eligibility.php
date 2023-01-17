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
            <li><a href="clist.php"><i class="fa  fa-fw"></i>Companies</a></li>
            <li><a href="applied_comp.php"><i class="fa  fa-fw"></i>Applied Companies</a></li>
            <li><a href="s_eligibility.php" class="active"  ><i class="fa  fa-fw"></i>Students Eligibility</a></li>
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



  <p>1.Registered student of MITE expected to complete his/her degree by July 2024 is eligible to register.
</p>
  <P>2.Sponsored students, i.e. students under QIP or those who have signed any bond for pursuing studies at the MITE must produce No Objection Certificate from the concerned authorities/ agencies prior to registering with SPO.

  <P>3.Students can participate in/register for placements only once during their stay.


    <P>4.If a UG student applies to at least one company in Third year and then converts to a dual degree, he/she would not be eligible to sit for placements in next year.

        <P>5.If a UG students registers for placements in fourth year and de-registers before September 25th, 2023, perfectly following the above mentioned guideline, he/she is eligible for placements in fourth year.



    <P>6.The last date to de-register from placements is September 25th, 2024. You need to drop a mail to sposecy@iitk.ac.in stating your wtihdrawl. Also, you have to preserve the fee receipt so that you do not have to pay the registration fees when you appear for placements next year.</P>

    <P>7.Students who did not sit for internships in academic year 2022-23, can either sit for Internships or placements for the session 2023-24.</P>


        </div>

			  </div>
			  </div>
			  </div>



        </div>
      </div>
    </div>
  </body>
</html>
