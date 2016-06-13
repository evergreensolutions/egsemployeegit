
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>EverGreen Solution</title>


<style>
#footer {
    background-color:#6cf;
    color:white;
    clear:both;
    text-align:center;
    padding:10px;
}
</style>

<!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/resources/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=request.getContextPath()%>/resources/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

   

    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
   

    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/resources/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">
var timeStamp = Math.floor(Date.now());

</script>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">EverGreen Solution</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
               
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="blank.html"><i class="fa fa-dashboard fa-fw"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Report<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Attedence</a>
                                </li>
                                <li>
                                    <a href="morris.html">Activity</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        
                        </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
               
 <h1 class="page-header">
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            

<center>

<h3>Employee Attedence Form</h3>

</center>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="flot-chart">
                                <div class="flot-chart-content" id="flot-line-chart">



<table style="vertical-align: middle; width: 700px;border="1">

<tr>
                            <td>
                                <table style="vertical-align: top; width: 225px; height:400px;border="1">
                                    

<tr Style="text-align:center">
                                        <td style="width: 159px; height: 26px; text-align: left;border="1"">
                                            <span id="contentholder1_lblPersonalDetails" class="labelStyle" style="font-size:18px;font-weight:bold;">MONTH</span>
                                        </td>
 <td style="width: 159px; height: 26px; text-align: left;border="1">


<select>
  <option value="volvo">JAN</option>
  <option value="saab">FEB</option>
  <option value="opel">MAR</option>
  <option value="audi">APR</option>

<option value="saab">MAY</option>
<option value="saab">JUN</option>
  <option value="opel"> JUL  </option>
  <option value="audi"> AUG </option>

<option value="volvo">SEP</option>
  <option value="saab">OCT</option>
  <option value="opel">NOV</option>
  <option value="audi">DEC</option>


</select>

</td>

                                    </tr>

 </table>
                               <td>
                                <table style="vertical-align: top; width: 225px; height:400px;border="1">
                              
<tr Style="text-align:center">
                                        <td style="width: 159px; height: 26px; text-align: left;border="1">
                                            <span id="contentholder1_lblPersonalDetails" class="labelStyle" style="font-size:18px;font-weight:bold;">YEAR</span>
                                        </td>
                                    
 <td style="width: 159px; height: 26px; text-align: left;border="1">

<select>
  <option value="volvo">2011</option>
  <option value="saab">2012</option>
  <option value="opel">2014</option>
  <option value="audi">2015</option>
<option value="audi">2016</option>


</select>

</td>


</tr>


</table>
                       
                               <td>
                                <table style="vertical-align: top; width: 225px; height:300px; border="1">
                                  

<tr Style="text-align:center">
                                        <td style="width: 159px; height: 26px; text-align: left; border="1">
                                            <span id="contentholder1_lblPersonalDetails" class="labelStyle" style="font-size:18px;font-weight:bold;">TIME</span>
                                        </td>

<td style="width: 159px; height: 26px; text-align: left; border="1">



<script type="text/javascript">
var dt = new Date();
var utcDate = dt.toUTCString();

document.write(utcDate);
</script>

</td>
                                    </tr>


</table>

</td>
                           
</table>


</div>
                            </div>                   

<p>

 
<img class="irc_mi iSlFjdtM81qE-pQOPx8XEepE" alt="" style="margin-top: 0px; margin-bottom: 0px;" src="https://lh5.googleusercontent.com/proxy/P4100e9kUuqIAD7Du78w5Ax60K3sx7ExbImb-hY4RwPmqh18YRBuaertqEDyIxAjdW2qHGjBfOW9zlNYonSfTd5WuuATjHvmlwWCY93NWBGoDQekoJhc99UQ_Na1Bw=w384-h384-nc" width="50" height="50">

<a href="sc3.html">
            <button style="width:120;height:25">Download</button>
      </a> 

<marquee>Master Attedence report avilable in upoto till date </marquee>

</p>


</div>
                        <!-- /.panel-body -->



                    </div>
                    <!-- /.panel -->
                </div>
     
          <!-- /.col-lg-12 -->
   
<div id="footer">
Copyright © Evergreen Solution
</div>

               
    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Flot Charts JavaScript -->
    <script src="../bower_components/flot/excanvas.min.js"></script>
    <script src="../bower_components/flot/jquery.flot.js"></script>
    <script src="../bower_components/flot/jquery.flot.pie.js"></script>
    <script src="../bower_components/flot/jquery.flot.resize.js"></script>
    <script src="../bower_components/flot/jquery.flot.time.js"></script>
    <script src="../bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="../js/flot-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
