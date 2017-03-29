package com.DDosSecurity.controller;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DDosSecurity.db.GetCon;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		System.out.println("uname: "+uname+"pwd: "+pwd);
		
		ResultSet rs = null;
		int count = 0;
		try{
			GetCon conn;
						// the mysql insert statement
		      String query = " select count(*) AS total from signin where username=? and password= ?";
		     
		     PreparedStatement pstmt = GetCon.getCon().prepareStatement(query); 
	         pstmt.setString(1, uname);
	         pstmt.setString(2, pwd);
	         rs= pstmt.executeQuery();
	        
	          
	          while (rs.next())
		      {
	        	  count=rs.getInt("total");
		      }
	          
		    }
		    catch (Exception e)
		    {
		      System.err.println("Got an exception!");
		      System.err.println(e.getMessage());
		    }
	String htmlresponse;	
		if(count>0){
			htmlresponse="success";
		}else{
			htmlresponse="failure";
		}
		
		response.setContentType("text/plain");
		response.getWriter().write(htmlresponse);
		
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
