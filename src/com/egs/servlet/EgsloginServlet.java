package com.egs.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class for Servlet: EgsloginServlet
 *
 */
 public class EgsloginServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public EgsloginServlet() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	
		com.egs.db.DBConfig conf = new com.egs.db.DBConfig();
		String isEmployee=conf.getEmployee();
		conf.SelectData(request.getParameter("Ename"),request.getParameter("Fname"),request.getParameter("Mname"),request.getParameter("Addr"),request.getParameter("City"),request.getParameter("Dist"),request.getParameter("State"),request.getParameter("Quali"),request.getParameter("Phone"),request.getParameter("Date"),request.getParameter("Exp"),request.getParameter("Joine"),request.getParameter("Salary"),request.getParameter("Location"),request.getParameter("Pos"),request.getParameter("Increment"),request.getParameter("Acc"));
		
	
	
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		

		com.egs.db.DBConfig conf = new com.egs.db.DBConfig();
		String isEmployee=conf.checkEmployee(request.getParameter("uName"),request.getParameter("pwd"));
		
		
		
		//	conf.insertActivity(request.getParameter("Location"),request.getParameter("Activity"),request.getParameter("Cafno"),request.getParameter("Srno"),request.getParameter("Modem"),request.getParameter("Instrument"),request.getParameter("Dropw"));
		
		
		
		//	conf.SelectData(request.getParameter("Ename"),request.getParameter("Fname"),request.getParameter("Mname"),request.getParameter("Addr"),request.getParameter("City"),request.getParameter("Dist"),request.getParameter("State"),request.getParameter("Quali"),request.getParameter("Phone"),request.getParameter("Date"),request.getParameter("Exp"),request.getParameter("Joine"),request.getParameter("Salary"),request.getParameter("Location"),request.getParameter("Pos"),request.getParameter("Increment"),request.getParameter("Acc"));
			
		                                                 
		if(isEmployee!=null){
			
			conf.insertloginhistroy(request.getParameter("uName"));
			if(request.getParameter("uName").equalsIgnoreCase("1")){
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/admindashboard.jsp");  
				//servlet2 is the url-pattern of the second servlet  
				  
				rd.forward(request, response);	
			}
			else if(request.getParameter("uName").equalsIgnoreCase("3")){
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/managerdata.jsp");  
				//servlet2 is the url-pattern of the second servlet  
				  
				rd.forward(request, response);	
			}
			
			else{
				//out.println("Employee is there");
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/employeeprofile.jsp");  
				//servlet2 is the url-pattern of the second servlet  
				  
				rd.forward(request, response);
				}
			}
			
			
	}   
		
		
		
		
		
		
}