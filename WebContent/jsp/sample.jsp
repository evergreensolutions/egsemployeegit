<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <form action="/egsemployeeapp/samplecode" method="post">
    <br>
    <br>
    <br>
    <br>
    <center>
    <table>
    <tr><td>Username:</td><td><input type="text" name="user" id="user" value="<%=request.getAttribute("user") %>"/></td></tr>
    <tr><td>Password:</td><td><input type="text" name="password" id="password" value="<%=request.getAttribute("password") %>"/></td></tr>
    <tr><td></td><td><input type="submit" value="ok"></td></tr>
   
    </table>
    </center>
    </form>

</body>
</html>