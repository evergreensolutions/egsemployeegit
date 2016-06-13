package com.egs.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: EgsEmployeeServlet
 *
 */
 public class EgsEmployeeServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public EgsEmployeeServlet() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.egs.db.DBConfig conf = new com.egs.db.DBConfig();
		conf.insertEmployeedata(request.getParameter("Ename"),request.getParameter("Fname"),request.getParameter("Mname"),request.getParameter("Addr"),request.getParameter("City"),request.getParameter("Dist"),request.getParameter("State"),request.getParameter("Quali"),request.getParameter("Phone"),request.getParameter("Date"),request.getParameter("Exp"),request.getParameter("Joine"),request.getParameter("Salary"),request.getParameter("Location"),request.getParameter("Pos"),request.getParameter("Increment"),request.getParameter("Acc"));
	}   	  	    
}