<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

</head>

<body>

	<%
		Boolean flag = Boolean.parseBoolean(request.getParameter("check"));
		String user = request.getParameter("userid");
		String pwd = request.getParameter("password");
		if (flag==true&&user.equals("admin")&&pwd.equals("admin")) {
			session.setAttribute("user",user);
			response.sendRedirect("admin_panel.jsp");
		} else if(!flag)
		 {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fosterdb", "root", "1234");
			Statement st = con.createStatement();
			String query = "select * from reg_user where userid = '" + user + "' and password='" + pwd + "'";
			ResultSet rs = st.executeQuery(query);

			if (rs.next()) {
				session.setAttribute("user",user);
				response.sendRedirect("mainpage.jsp");
			} else {
	%>

	<div class="text-center">
		<div class="row">
			<div class="container">
				<div class="card-body">
					<h3>Invalid credentials</h3>
				</div>
				<div class="card-body">
					<div class="btn-group btn-group-justified btn-group-sm">
						<a href="login.jsp" class="btn btn-primary">Try again</a>
					</div>

				</div>
			</div>
		</div>
	</div>
	<%
		}
		}
		else{%> <p>Wrong input<a href="login.jsp">Try again</p><%}
	%>

</body>
</html>