package com.egs.db;
import java.sql.*;
public class DBConfig {
	 static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost/egs";

	   //  Database credentials
	   static final String USER = "root";
	   static final String PASS = "green$123";
	   String success="";
	   public String getEmployee(){
		   Connection conn = null;
		   CallableStatement stmt = null;
		   try{
		      //STEP 2: Register JDBC driver
		      Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      String sql = "{call getEmpName (?,?)}";
		      stmt = conn.prepareCall(sql);
		      
		      //Bind IN parameter first, then bind OUT parameter
		      int empID = 1;
		      stmt.setInt(1, empID); // This would set ID as 102
		      // Because second parameter is OUT so register it
		      stmt.registerOutParameter(2, java.sql.Types.VARCHAR);
		      
		      //Use execute method to run stored procedure.
		      System.out.println("Executing stored procedure..." );
		      stmt.execute();

		      //Retrieve employee name with getXXX method
		      String empName = stmt.getString(2);
		      System.out.println("Emp Name with ID:" + 
		               empID + " is " + empName);
		      stmt.close();
		      conn.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }// nothing we can do
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }//end try
		   return success;
	   }
	   
	   
	   public String checkEmployee(String empId,String password){
		   Connection conn = null;
		   CallableStatement stmt = null;
		   String isEmployee="";
		   try{
		      //STEP 2: Register JDBC driver
		      Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      String sql = "{call checkEmployee (?,?,?)}";
		      stmt = conn.prepareCall(sql);
		      
		      //Bind IN parameter first, then bind OUT parameter
		      //int empID = 1;
		      stmt.setString(1, empId); // This would set ID as 102
		      stmt.setString(2, password);
		      // Because second parameter is OUT so register it
		      stmt.registerOutParameter(3, java.sql.Types.VARCHAR);
		      
		      //Use execute method to run stored procedure.
		      System.out.println("Executing stored procedure..." );
		      stmt.execute();

		      //Retrieve employee name with getXXX method
		      String empID = stmt.getString(3);
		      System.out.println("Emp Id "+ empID);
		      
		      if(empID==null){
		    	  isEmployee=null;
		      }
		      else{
		    	  isEmployee="success";
		      }
		      stmt.close();
		      conn.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }// nothing we can do
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }//end try
		   return isEmployee;
	   }
	  
	   public void insertloginhistroy(String empId){
		   Connection conn = null;
		   CallableStatement stmt = null;
		   String isEmployee="";
		   try{
		      //STEP 2: Register JDBC driver
		      Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      String sql = "{call insertlogin (?)}";
		      stmt = conn.prepareCall(sql);
		      
		      //Bind IN parameter first, then bind OUT parameter
		      //int empID = 1;
		      stmt.setString(1, empId); // This would set ID as 102
		     // stmt.setString(2, password);
		      // Because second parameter is OUT so register it
		     // stmt.registerOutParameter(3, java.sql.Types.VARCHAR);
		      
		      //Use execute method to run stored procedure.
		      System.out.println("Executing stored procedure..." );
		      stmt.execute();
		      
		      stmt.close();
		      conn.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }// nothing we can do
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   //end try
		   
		   }
	   }

public void insertActivity(String Location,String Activity,String Cafno,String Srno,String Modem,String Instrument,String Dropw){
	   Connection conn = null;
	   CallableStatement stmt = null;
	   String isEmployee="";
	   try{
	      //STEP 2: Register JDBC driver
	      Class.forName("com.mysql.jdbc.Driver");

	      //STEP 3: Open a connection
	      System.out.println("Connecting to database...");
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);

	      //STEP 4: Execute a query
	      System.out.println("Creating statement...");
	      String sql = "{call insertActivity (?,?,?,?,?,?,?)}";
	      stmt = conn.prepareCall(sql);
	      
	      //Bind IN parameter first, then bind OUT parameter
	      //int empID = 1;
	      stmt.setString(1, Location);
	      stmt.setString(2, Activity);
	      stmt.setString(3, Cafno);
	      
	      stmt.setString(4, Srno);
	      stmt.setString(5, Modem);
	      stmt.setString(6, Instrument);
	      stmt.setString(7, Dropw);
	      
	      
	      
	      
	     // stmt.setString(3, empid);
	      
	      // Because second parameter is OUT so register it
	     // stmt.registerOutParameter(3, java.sql.Types.VARCHAR);
	      
	      //Use execute method to run stored procedure.
	      System.out.println("Executing stored procedure..." );
	      stmt.execute();

	     
	      stmt.close();
	      conn.close();
	   }catch(SQLException se){
	      //Handle errors for JDBC
	      se.printStackTrace();
	   }catch(Exception e){
	      //Handle errors for Class.forName
	      e.printStackTrace();
	   }finally{
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            stmt.close();
	      }catch(SQLException se2){
	      }// nothing we can do
	      try{
	         if(conn!=null)
	            conn.close();
	      }catch(SQLException se){
	         se.printStackTrace();
	      }//end finally try
	   }//end try
	   
}



public void insertEmployeedata(String Ename,String Fname,String Mname,String Addr,String City,String Dist,String State,String Quali,String Phone,String Date,String Exp,String Joine,String Salary,String Pos,String Location,String Increment,String Acc){
	   Connection conn = null;
	   CallableStatement stmt = null;
	   String isEmployee="";
	   try{
	      //STEP 2: Register JDBC driver
	      Class.forName("com.mysql.jdbc.Driver");

	      //STEP 3: Open a connection
	      System.out.println("Connecting to database...");
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);

	      //STEP 4: Execute a query
	      System.out.println("Creating statement...");
	      String sql = "{call insertEmployeedata (?,?,?,?)}";
	      stmt = conn.prepareCall(sql);
	      
	      //Bind IN parameter first, then bind OUT parameter
	      //int empID = 1;
	      stmt.setString(1, Ename); // This would set ID as 102
	      stmt.setString(2, Fname);
	      stmt.setString(3, Mname);
//	      stmt.setString(4, Addr);
//	      stmt.setString(5, City);
//	      stmt.setString(6, Dist);
//	      stmt.setString(7, State);
	      stmt.setString(4, Quali);
//	      stmt.setString(9, Phone);
//	      stmt.setString(10, Date);
//	      stmt.setString(11, Exp);
//	      stmt.setString(12, Joine);
//	      stmt.setString(13, Salary);
//	      stmt.setString(14, Pos);
//	      stmt.setString(15, Location);
//	      stmt.setString(16, Increment);
//	      stmt.setString(17, Acc);
	      
	      
	      
	     // stmt.setString(3, empid);
	      
	      // Because second parameter is OUT so register it
	     // stmt.registerOutParameter(3, java.sql.Types.VARCHAR);
	      
	      //Use execute method to run stored procedure.
	      System.out.println("Executing stored procedure..." );
	      stmt.execute();

	     
	      stmt.close();
	      conn.close();
	   }catch(SQLException se){
	      //Handle errors for JDBC
	      se.printStackTrace();
	   }catch(Exception e){
	      //Handle errors for Class.forName
	      e.printStackTrace();
	   }finally{
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            stmt.close();
	      }catch(SQLException se2){
	      }// nothing we can do
	      try{
	         if(conn!=null)
	            conn.close();
	      }catch(SQLException se){
	         se.printStackTrace();
	      }//end finally try
	   }//end try
	   
}




public void SelectData (String Ename,String Fname,String Mname,String Addr,String City,String Dist,String State,String Quali,String Phone,String Date,String Exp,String Joine,String Salary,String Position,String Location,String Increment,String Acc){

	   Connection conn = null;
	   CallableStatement stmt = null;
	   try{
	      //STEP 2: Register JDBC driver
	      Class.forName("com.mysql.jdbc.Driver");

	      //STEP 3: Open a connection
	      System.out.println("Connecting to database...");
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);

	      //STEP 4: Execute a query
	      System.out.println("Creating statement...");
	      String sql = "{call SelectData (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	      stmt = conn.prepareCall(sql);
	      
	      //Bind IN parameter first, then bind OUT parameter
	    
	      stmt.setString(1,Ename); // This would set ID as 102
	      // Because second parameter is OUT so register it
	      stmt.registerOutParameter(2, java.sql.Types.VARCHAR);
	      stmt.registerOutParameter(3, java.sql.Types.VARCHAR);
	      
	      
	      stmt.registerOutParameter(4, java.sql.Types.VARCHAR);
	      stmt.registerOutParameter(5, java.sql.Types.VARCHAR);
	      
	      
	      stmt.registerOutParameter(6, java.sql.Types.VARCHAR);
	      stmt.registerOutParameter(7, java.sql.Types.VARCHAR);
	      
	      
	      
	      stmt.registerOutParameter(8, java.sql.Types.VARCHAR);
	      stmt.registerOutParameter(9, java.sql.Types.VARCHAR);
	      
	      
	      stmt.registerOutParameter(10, java.sql.Types.VARCHAR);
	      stmt.registerOutParameter(11, java.sql.Types.VARCHAR);
	      
	      stmt.registerOutParameter(12, java.sql.Types.VARCHAR);
	      stmt.registerOutParameter(13, java.sql.Types.VARCHAR);
	      
	      stmt.registerOutParameter(14, java.sql.Types.VARCHAR);
	      stmt.registerOutParameter(15, java.sql.Types.VARCHAR);
	      
	      stmt.registerOutParameter(16, java.sql.Types.VARCHAR);
	      stmt.registerOutParameter(17, java.sql.Types.VARCHAR);
	      
	      
	      //Use execute method to run stored procedure.
	      System.out.println("Executing stored procedure..." );
	      stmt.execute();

	      //Retrieve employee name with getXXX method
	   
	    Fname= stmt.getString(2);
	      
		       Mname= stmt.getString(3);
		      Addr= stmt.getString(4); 
		      
		     City= stmt.getString(5);
		     Dist= stmt.getString(6);
		      
		     State= stmt.getString(7);
		    Quali= stmt.getString(8);
		    
		    Phone= stmt.getString(9);
		 Date= stmt.getString(10);
		    
		   Exp= stmt.getString(11);

		    
		  Joine= stmt.getString(12);
		    Salary=  stmt.getString(13);
		      Position= stmt.getString(14);
		       Location=stmt.getString(15);
		      Increment= stmt.getString(16);
		     Acc= stmt.getString(17);
		     
		     
		     System.out.println("Fname : " + Fname);
				System.out.println("Mothername : " + Mname);
				System.out.println("Address : " + Addr);
		     
		    
	      stmt.close();
	      conn.close();
	   }catch(SQLException se){
	      //Handle errors for JDBC
	      se.printStackTrace();
	   }catch(Exception e){
	      //Handle errors for Class.forName
	      e.printStackTrace();
	   }finally{
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            stmt.close();
	      }catch(SQLException se2){
	      }// nothing we can do
	      try{
	         if(conn!=null)
	            conn.close();
	      }catch(SQLException se){
	         se.printStackTrace();
	      }//end finally try
	   }//end try
	  
}

}


