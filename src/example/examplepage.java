package example;

 
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
  
public class examplepage extends HttpServlet {
  
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
     String Location=request.getParameter("Location");
     // String password=request.getParameter("password");
      response.setContentType("text/html");
    //  int count=0;
      try {
     // Load the database driver
      Class.forName("com.mysql.jdbc.Driver");
      // Get a Connection to the database
      connection = DriverManager.getConnection(connectionURL, "root", "green$123"); 
      //Add the data into the database
           s = connection.createStatement();
         String QueryString = "select * from user_activity where ='"+Location.trim()+"'";
         rs = s.executeQuery(QueryString);
      if(rs.next ()){//Use If Here not While
        request.setAttribute("Location",rs.getString(1));
        request.setAttribute("Activity",rs.getString(2));
        request.setAttribute("Cafno",rs.getString(3));
        request.setAttribute("Srno",rs.getString(4)); 
      
        request.setAttribute("Modem",rs.getString(5));
        request.setAttribute("Instrument",rs.getString(6)); 
        request.setAttribute("Drop",rs.getString(7));
      
      
      
      }
                   
      rs.close();
                    s.close();
     RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "/egsemployeeapp/example.jsp" );
      dispatcher.forward( request, response );
      }
      catch(SQLException e){
      e.printStackTrace();
      } 
      catch (ClassNotFoundException e) {
          e.printStackTrace();
    }
    }
 public void destroy() { 
}
}