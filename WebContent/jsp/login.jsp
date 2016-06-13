<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>EGS login</title>
    
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/loginstyle.css"/>
    
    
       

    
    
    
  </head>

 

    <body>
<div id="header">
<h1>Welcome</h1>
</div>

<div class="container">
	<section id="content">
		<form action="/egsemployeeapp/EgsloginServlet" method="post">
			<h1>Login Form</h1>
			<div>
				<input type="text" name="uName" placeholder="Username" required="" id="username" />
				
			</div>
			<div>
				<input type="password" name="pwd" placeholder="Password" required="" id="password" />
			</div>
			<div>
				<input type="submit" value="Log in" />
				<a href="#">Forgot your password?</a>
				<a href="#">Register</a>
			</div>
		</form><!-- form -->
		
	</section><!-- content -->

</div><!-- container -->

<div id="footer">
Copyright © Evergreen Solution 2016
</div>



    
        <script src="js/index.js"></script>

    
   
    
  </body>
</html>
