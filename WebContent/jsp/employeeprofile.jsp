<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    




<title>Employe Management System</title>

<style>

 


 


#navleft {
  
 position: absolute; 
top: 200px;
 left:300px;
 width: 700px;
 height: 400px;
 background-color: white;
 
} 

table, th, td {
    border: 0px solid black;
    border-collapse: collapse;
padding:10px;


}


 th,td {
    padding: 10px;
}

th{

text-align:right;

}

#footer {
    background-color:#6cf;
    color:white;
    clear:both;
    text-align:center;
    padding:10px;
}


#navphoto {

position: relative;
 float: right;
 width:100px; 
height: 100px; 
color:Red;
top:0px;
background-color: #E5E4E2;


}




</style>






   <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/resources/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=request.getContextPath()%>/resources/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/resources/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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
                <a class="navbar-brand" href="index.html">Employee information</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Evergreen Solution</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
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
                                    <a href="flot.html">Attendence</a>
                                </li>
                                <li>
                                    <a href="Activity.jsp">Activity</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                            </ul>
                            <!-- /.nav-second-level -->
                      
                        
                 
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        





                          
          <table>
<tr>

                        <span id="contentholder1_lblEmployeeName" class="labelStyle" style="font-size:22px;  text-align: center; font-weight:bold;">Rajkumar</span>
   
   <span id="Ename" class="labelStyle" ></span>      
   
                          
</tr>


<tr>
<td><span id="contentholder1_lblDesg" class="labelStyle" style="font-weight:bold;"> Desigination: </span></td>
                                         <td>   <span id="Desig" class="labelStyle" ></span>      

</td>     

</tr>



<tr>
<td><span id="contentholder1_lblDesg" class="labelStyle" style="font-weight:bold;">Emp id: </span></td>
                                         <td>   <span id="Eid" class="labelStyle" ></span>      

</td>     

</tr>




</table>   

</div>


<div id="navleft">

<table style="vertical-align: middle; width: 700px;">





<tr>
                            <td>
                                <table style="vertical-align: top; width: 225px; height:400px;">
                                    

<tr Style="text-align:center">
                                        <td style="width: 159px; height: 26px; text-align: center;">
                                            <span id="contentholder1_lblPersonalDetails" class="labelStyle" style="font-size:18px;font-weight:bold;">Personal Details</span>
                                        </td>
                                    </tr>




<tr style="text-align: left">
                                        <td style="width: 10px; height: 10px; text-align: ">
                                            <span id="contentholder1_lblEmpID" class="labelStyle" ">FatherName :</span>
                                            <span id="Fname" class="labelStyle"></span>
                                        </td>
                                    </tr>
                                    <tr style="text-align: left">
                                        <td style="width: 10px; height: 10px; text-align: left;">
                                            <span id="contentholder1_lblDesg" class="labelStyle" ">MotherName: </span>
                                            <span id="Mname" class="labelStyle"></span></td>
                                    </tr>
                                    


                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">Address: </span>
                                            <span id="Addr" class="labelStyle"></span></td>
                                    </tr>
                                      
                                     





                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">City : </span>
                                            <span id="City" class="labelStyle"></span></td>
                                    </tr>
                                    
                                            
                                        



                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">District : </span>
                                            <span id="Dist" class="labelStyle"></span></td>
                                    </tr>
                                    
                                            
                                   




                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">State: </span>
                                            <span id="State" class="labelStyle"></span></td>
                                    </tr>
                                    
                                            
                                      

<tr style="text-align: left">
                       <td style="width: 0px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">Qualification: </span>
                                            <span id="Quali" class="labelStyle"></span></td>
                                    </tr>
                                    
                                            
                                    




 </table>








                               <td>
                                <table style="vertical-align: top; width: 225px; height:400px;">
                                    


<tr Style="text-align:center">
                                        <td style="width: 159px; height: 26px; text-align: center;">
                                            <span id="contentholder1_lblPersonalDetails" class="labelStyle" style="font-size:18px;font-weight:bold;">Company Details</span>
                                       
                                        
                                        </td>
                                    </tr>






<tr style="text-align: left">
                                        <td style="width: 10px; height: 10px; text-align: left;">
                                            <span id="contentholder1_lblEmpID" class="labelStyle">Date of join :</span>
                                            <span id="Date" class="labelStyle"></span>
                                        </td>
                                    </tr>
                                    <tr style="text-align: left">
                                        <td style="width: 10px; height: 10px; text-align: left;">
                                            <span id="contentholder1_lblDesg" class="labelStyle">Exprience: </span>
                                            <span id="Exp" class="labelStyle"></span></td>
                                    </tr>
                                     

                               


                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">Joined As: </span>
                                            <span id="Joine" class="labelStyle"></span></td>
                                    </tr>
                                      
                                       






                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">Salary: </span>
                                            <span id="Salary" class="labelStyle"></span></td>
                                    </tr>
                                    
                                      





                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">Position : </span>
                                            <span id="Position" class="labelStyle"></span></td>
                                    </tr>
                                    
                                            
                                       



                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;"> Location</span>
                                            <span id="Location" class="labelStyle"></span></td>
                                    </tr>
                                    
                                            
                                        


<tr style="text-align: left">
                       <td style="width: 0px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">Increment</span>
                                            <span id="contentholder1_lblEmpDesignation" class="labelStyle"></span></td>
                                    </tr>
                                    
                                            
                                      

</table>

</td>



                          


                               <td>
                                <table style="vertical-align: top; width: 225px; height:400px;">
                                    







<tr Style="text-align:center">
                                        <td style="width: 159px; height: 26px; text-align: center;">
                                            <span id="contentholder1_lblPersonalDetails" class="labelStyle" style="font-size:18px;font-weight:bold;">Contact Details</span>
                                        </td>
                                    </tr>






<tr style="text-align: left">
                                        <td style="width: 10px; height: 10px; text-align: left;">
                                            <span id="contentholder1_lblEmpID" class="labelStyle" style="font-weight:bold;">Phone no :</span>
                                            <span id="Phone" class="labelStyle"></span>
                                        </td>
                                    </tr>
                                    <tr style="text-align: left">
                                        <td style="width: 10px; height: 10px; text-align: left;">
                                            <span id="contentholder1_lblDesg" class="labelStyle" style="font-weight:bold;">Email Id: </span>
                                            <span id="Email" class="labelStyle"></span></td>
                                    </tr>
                                     
                                     
                               


                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">Alternative NO: </span>
                                            <span id="Alter" class="labelStyle"></span></td>
                                    </tr>
                                      
                                 





                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: ">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">Emergency Contact: </span>
                                            <span id="Emergency" class="labelStyle"></span></td>
                                    </tr>
                                    
                                    





                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;">Blood Group : </span>
                                            <span id="BG" class="labelStyle"></span></td>
                                    </tr>
                                    
                                      




                <tr style="text-align: left">
                       <td style="width: 10px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;"></span>
                                            <span id="contentholder1_lblEmpDesignation" class="labelStyle"></span></td>
                                    </tr>
                                    
                                            
                                    

<tr style="text-align: left">
                       <td style="width: 0px; height: 10px; text-align: left;">
                   <span id="contentholder1_lblDesg" class="labelStyle" style="font- weight:bold;"> </span>
                                            <span id="contentholder1_lblEmpDesignation" class="labelStyle"></span></td>
                                    </tr>
                                    
                                            
                                      



</table>

</td>





</table>


</div>



<div id="navphoto">

<center>Image</center>
<center>not</center>
<center>found</center>


</div>





                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
 

     <!-- /.container-fluid -->
        </div>
       





 <!-- /#page-wrapper -->



  



      

<div id="footer">
Copyright © Evergreen Solution
</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>



</body>

</html>
