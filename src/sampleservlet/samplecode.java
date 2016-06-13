package sampleservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
  
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
  
public class samplecode extends HttpServlet {
  
@Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}
  
  
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    PrintWriter out = response.getWriter();
      String connectionURL = "jdbc:mysql://localhost/egs";
      Connection connection=null;
      Statement s=null;
      ResultSet rs=null;
      String user=request.getParameter("user");
      String password=request.getParameter("password");
      response.setContentType("text/html");
      int count=0;
      try {
     // Load the database driver
      Class.forName("com.mysql.jdbc.Driver");
      // Get a Connection to the database
      connection = DriverManager.getConnection(connectionURL, "root", "green$123"); 
      //Add the data into the database
           s = connection.createStatement();
         String QueryString = "select * from egs_data where user='"+user.trim()+"'";
         rs = s.executeQuery(QueryString);
      if(rs.next ()){//Use If Here not While
        request.setAttribute("user",rs.getString(1));
        request.setAttribute("password",rs.getString(2));
          }
                   
      rs.close();
                    s.close();
      RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "jsp/sample.jsp" );
      dispatcher.forward( request, response );
      }
      catch(SQLException e){
      System.out.println("Exception is ;"+e);
      } 
      catch (ClassNotFoundException e) {
          System.out.println("Exception is ;"+e);
    }
    }
 public void destroy() { 
}
}