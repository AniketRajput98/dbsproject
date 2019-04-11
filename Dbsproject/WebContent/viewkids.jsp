<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
<%@ page import="java.sql.*"%>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fosterdb", "root", "1234");
    Statement st = con.createStatement();
    String query = "select * from kids";
    ResultSet rs = st.executeQuery(query);
%>
		<table class="table">
		<thead>
			<tr>
      <th><abbr title="k_id">K_id</abbr></th>
      <th>Team</th>
      <th><abbr title="name">Name</abbr></th>
      <th><abbr title="age">Age</abbr></th>
      <th><abbr title="gender">Gender</abbr></th>
      <th><abbr title="ethnicity">Ethnicity</abbr></th>
      <th><abbr title="ad_id">ad_id</abbr></th>
      <th><abbr title="cid">cid</abbr></th>
      <th><abbr title="med_id">med_id</abbr></th>
    </tr>
  </thead>
		
	<tbody>
		<% while (rs.next()) 
  {   %>
						<tr>
							<td><%=rs.getString("k_id")%></td>
							<td><%=rs.getString("name")%></td>
							<td><%=rs.getString("age")%></td>
							<td><%=rs.getString("gender")%></td>
							<td><%=rs.getString("ethnicity")%></td>
							<td><%=rs.getString("ad_id")%></td>
							<td><%=rs.getString("cid")%></td>
							<td><%=rs.getString("med_id")%></td>
						</tr>
						<%   } %>
	</tbody>
	</table>
					
</body>
</html>
