<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import="java.sql.*" %>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fosterdb","root","1234");
	String query = "insert into reg_user values (?,?,?,?,?,?)";
	PreparedStatement stmt = con.prepareStatement(query);
	 stmt.setString(1,request.getParameter("userid"));
	 stmt.setString(2,request.getParameter("password"));
	 stmt.setInt(3,Integer.parseInt(request.getParameter("ssn")));
	 stmt.setString(4,request.getParameter("firstname"));
	 stmt.setString(5,request.getParameter("lastname"));
	 stmt.setString(6,request.getParameter("email"));
	 
	int i = stmt.executeUpdate();
	 if (i > 0) {     
		 out.println("Registration successfull!");
		 response.sendRedirect("login.jsp");	 
	 } 
	 else {      
		 response.sendRedirect("register.jsp");     
	 }

%>
</body>
</html>