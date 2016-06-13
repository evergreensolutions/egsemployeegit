
 import java.io.*;
 import javax.servlet.*;
 import javax.servlet.http.*;
 import java.sql.*;
  
 public class display extends HttpServlet {
  
     public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
         PrintWriter out = res.getWriter();
         res.setContentType("text/html");
         out.println("<html><body>");
         try {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost/egs","root","green$123");
             // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery("select * from egs_activity where Location=Location");
             out.println("<table border=1 width=100/% height=50%>");
             out.println("<tr><th>CurrentLocation</th><th>Activity</th><th>Cafno</th><th>Srno</th><th>Modem</th><th>Instrument</th><th>Drop</th><tr><tr>");
             while (rs.next()) {
                 String userid = rs.getString("Location");
                 String name = rs.getString("Activity");
                 String Lname = rs.getString("Cafno");
                 String Fname = rs.getString("Srno");
                 String Eid = rs.getString("Modem");
                 String Address = rs.getString("Instrument");
                 String Status = rs.getString("Drop");
                 
                
 
               
                 
                 
                 out.println("<tr><td>" + userid+ "</td><td>" + name + "</td><td>" + Lname + "</td>" + Fname + "</td><td>" + Eid + "</td><td>" +Address + "</td>"+ Status + "</td><td> </tr>"); 
             }
             out.println("</table>");
             out.println("</html></body>");
             con.close();
            }
             catch (Exception e) {
             e.printStackTrace();
         }
     }
 }
 