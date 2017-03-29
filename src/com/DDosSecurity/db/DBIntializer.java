package com.DDosSecurity.db;

public interface DBIntializer {
/*String DRIVER="oracle.jdbc.driver.OracleDriver";
String CON_STRING="jdbc:oracle:thin:@localhost:1521:xe";
String USERNAME="system";
String PASSWORD="oracle";*/
	
	/* For MYSQL DATABASE*/
	/*	String DRIVER="com.mysql.jdbc.Driver";
	String CON_STRING="jdbc:mysql://localhost:3306/neustar";
	String USERNAME="root";
	String PASSWORD="";	 */
	
	
	
	/* For MYSQL DATABASE*/
	String DRIVER="org.postgresql.Driver";
	String CON_STRING="jdbc:postgresql://localhost:3306/security";
	String USERNAME="postgres";
	String PASSWORD="root";	
	
}
