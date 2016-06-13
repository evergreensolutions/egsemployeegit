
package reterivedata;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
public class SelectData extends HttpServlet {
       public void doGet(HttpServletRequest request, HttpServletResponse response)
                     throws ServletException, IOException {
              response.setContentType("text/html");
              PrintWriter out = response.getWriter();        
              String Activity=request.getParameter("Activity");                          
              try{
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/egs","root","green$123");               
          PreparedStatement ps=con.prepareStatement("select * from egs_activity ");
          
             ResultSet rs=ps.executeQuery();                
                     /* Printing column names */
               ResultSetMetaData rsmd=rs.getMetaData();
                  while(rs.next())
                        {
              String Location=rs.getString(1);
              String Cafno=rs.getString(2);
              String Srno=rs.getString(3);
              String Modem=rs.getString(4);
              String Instrument=rs.getString(5);
              String Dropw=rs.getString(6);
                        }
 
              }
                  catch (Exception e2)
                {
                    e2.printStackTrace();
                }
 
              finally{out.close();
                }
       }
 
} 