<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import="java.sql.*"%>
</head>
<body>
<%
		String gender = request.getParameter("gender");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fosterdb", "root", "1234");
		Statement st = con.createStatement();
		String query = "select * from kids where gender='" + gender + "'";
		ResultSet rs = st.executeQuery(query);
	%>
	<%
				while (rs.next()) {
			%>
				<%=rs.getString("name")%>
				<%=rs.getString("age")%>
				<%=rs.getString("gender")%>
			<%
				}
			%>
</body>
</html>