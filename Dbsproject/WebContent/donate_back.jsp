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
	String query = "insert into donation values (?,?,?,?,?,?,?)";
	PreparedStatement stmt = con.prepareStatement(query);
	 String userid= (String)session.getAttribute("user"); 
	 stmt.setString(1,userid);
	 stmt.setInt(2,Integer.parseInt(request.getParameter("ssn")));
	 stmt.setString(3,request.getParameter("firstname"));
	 stmt.setString(4,request.getParameter("lastname"));
	 stmt.setString(5,request.getParameter("email"));
	 stmt.setString(6,request.getParameter("item"));
	 stmt.setInt(7,Integer.parseInt(request.getParameter("money")));
	 
	int i = stmt.executeUpdate();
	 if (i > 0) {     
		 out.println("Thank you for your contribution");
		 response.sendRedirect("mainpage.jsp");	 
	 } 
	 else {      
		 response.sendRedirect("login.jsp");     
	 }

%>

</body>
</html>