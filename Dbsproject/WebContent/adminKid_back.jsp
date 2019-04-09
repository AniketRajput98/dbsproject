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
	 String query = "insert into kids values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
	 PreparedStatement stmt = con.prepareStatement(query);
	 stmt.setString(1,request.getParameter("k_id"));
	 stmt.setString(2,request.getParameter("name"));
	 stmt.setInt(3,Integer.parseInt(request.getParameter("age")));
	 stmt.setString(4,request.getParameter("bloodgroup"));
	 stmt.setString(5,request.getParameter("gender"));
	 stmt.setString(6,request.getParameter("ethnicity"));
	 stmt.setString(7,request.getParameter("bfather"));
	 stmt.setString(8,request.getParameter("bmother"));
	 stmt.setInt(9,Integer.parseInt(request.getParameter("bp_id")));
	 stmt.setInt(10,Integer.parseInt(request.getParameter("ad_id")));
	 stmt.setInt(11,Integer.parseInt(request.getParameter("cid")));
	 stmt.setInt(12,Integer.parseInt(request.getParameter("med_id")));
	int i = stmt.executeUpdate();
	 if (i > 0) {     
		 out.println("Kid added to database");
		 response.sendRedirect("admin_panel.jsp");	 
	 } 
	 else {      
		 out.println("Process unsuccessful");
		 response.sendRedirect("admin_panel.jsp");     
	 }

%>
</body>
</html>