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
 * Servlet implementation class AccountController
 */
@WebServlet("/AccountController")
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountController() {
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
		      String query = " select account_name from ddos_security";
		     
		   // create the java statement
		      Statement st = GetCon.getCon().createStatement();
		      
		      // execute the query, and get a java resultset
		      ResultSet rs = st.executeQuery(query);
		      
		      // iterate through the java resultset
		      
		      while (rs.next())
		      {
		    	  
		    	  //int account_id = rs.getInt("account_id");
			        String account_name = rs.getString("account_name");
			        htmlResponse2 =  htmlResponse2 + "<li class='list-group-item'> <a href='useraccount.jsp?account_name="+account_name+"'>" +account_name+"</a><span class='glyphicon glyphicon-chevron-right pull-right'></span></li>";
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
		
		System.out.println("do post method");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contactnumber=request.getParameter("contactnumber");
		//System.out.println("name :"+name +" "+email+" "+contactnumber);
		
		try{
			GetCon conn;
			
			// the mysql insert statement
		      //String query = " insert into \"ddos_security\" (account_name,account_mail,alias,first_address,second_address,city,state,country)values (?, ?, ?,?,?,?,?,?)";
			String query = "insert into ddos_security (account_name,account_mail,alias,first_address,second_address,city,state,country,services) values (?, ?, ?,?,?,?,?,?,?)";
		      // create the mysql insert preparedstatement
		      PreparedStatement preparedStmt = GetCon.getCon().prepareStatement(query);
		      preparedStmt.setString (1,name);
		      preparedStmt.setString (2,email);
		      preparedStmt.setString (3,"alias");
		      preparedStmt.setString (4,"address one");
		      preparedStmt.setString (5,"address two");
		      preparedStmt.setString (6,"chennai");
		      preparedStmt.setString (7,"tamilnadu");
		      preparedStmt.setString (8,"India");
			preparedStmt.setBoolean (9,false);
		      // execute the preparedstatement
		      preparedStmt.execute();
		      
		    }
		    catch (Exception e)
		    {
		      System.err.println("Got an exception!");
		      System.err.println(e.getMessage());
		    }
		
		
		 
	//String insert_query="insert into ddos_security (account_name,account_mail,alias,first_address,second_address,city,state,country) values ('suresh','suresh@gmail.com','KS','Street1 ','Street1','chennai','tamilnadu','india')";
		
		
		System.out.println("hai");
		
		String htmlRespone="<font color='#43b200'><b>Account has been created successfully</b></font>";
		response.setContentType("text/html");
		response.getWriter().write(htmlRespone);
		
	}

}
