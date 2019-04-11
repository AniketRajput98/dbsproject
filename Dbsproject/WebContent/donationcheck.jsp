<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Donation Logs</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
 <%@ page import="java.sql.*"%>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fosterdb", "root", "1234");
    Statement st = con.createStatement();
    String query = "select * from donation";
    ResultSet rs = st.executeQuery(query);
  %>
  
  <div class="space"></div>
  <div class="columns">
  <div class="column is-half is-offset-one-quarter">
  <div class="card">
  <div class="card-content">

 <table style="width:100%">
 <tr>
    <th>User_id</th>
    <th>Firstname</th>
    <th>Lastname</th> 
    <th>Donated_item</th>
  <th>Amount</th>
</tr>

  <% while (rs.next()) 
  {   %>
  <tr>
    <td><%=rs.getString("user")%></td>
    <td> <%=rs.getString("firstname")%></td>
    <td><%=rs.getString("lastname")%></td> 
    <td> <%=rs.getString("item")%></td>
  <td><%=rs.getString("money")%></td>
</tr>
<%   } %>
</table>
</div>
</div>
</div>
</body>
</html>
