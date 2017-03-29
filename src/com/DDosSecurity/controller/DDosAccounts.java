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
 * Servlet implementation class DDosAccounts
 */
@WebServlet("/DDosAccounts")
public class DDosAccounts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DDosAccounts() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
String htmlResponse2 = "";
		
		try{
			GetCon conn;
			// the mysql insert statement
		      String query = " select account_name from ddos_security where services=true ";
		     
		   // create the java statement
		      Statement st = GetCon.getCon().createStatement();
		      
		      // execute the query, and get a java resultset
		      ResultSet rs = st.executeQuery(query);
		      
		      // iterate through the java resultset
		      
		      while (rs.next())
		      {
		    	  
		    	  //int account_id = rs.getInt("account_id");
			        String account_name = rs.getString("account_name");
			        htmlResponse2 =  htmlResponse2 + "<li class='list-group-item'> <a href='accountdetails.jsp?account_name="+account_name+"'>" +account_name+"</a><span class='glyphicon glyphicon-chevron-right pull-right'></span></li>";
		        // print the results
//		        System.out.format("%s \n", account_name);
		      }
		      st.close();
		      
		    }
		    catch (Exception e)
		    {
		      System.err.println("Got an exception!");
		      System.err.println(e.getMessage());
		    }
		
		String htmlRespone1 =  "<div>"
				+ "<ul class='list-group'>"			
				+htmlResponse2
				+ "</ul>"
				+ "</div>";
		response.setContentType("text/plain");
		response.getWriter().write(htmlRespone1);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String account_name=request.getParameter("accountname");
		
		System.out.println("acc " +account_name);
		
		
		try{
			GetCon conn;
			
		         String sql = "UPDATE ddos_security set services = ? where account_name=?";
		        PreparedStatement pstmt = GetCon.getCon().prepareStatement(sql); 
		            pstmt.setBoolean(1, true);
		            pstmt.setString(2, account_name);
		            pstmt.execute();
		    }
		    catch (Exception e)
		    {
		      System.err.println("Got an exception!");
		      System.err.println(e.getMessage());
		    }
		
		String htmlRespone="<font color='#43b200'><b>DDos has been assigned successfully</b></font>";
		response.setContentType("text/html");
		response.getWriter().write(htmlRespone);

		
	}

}
