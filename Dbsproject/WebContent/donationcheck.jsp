<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Donation Logs</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
<script defer
  src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
<%@ page import="java.sql.*"%>
</head>
<body id="color">
  <div class="field">
            <div class="control">
              <div class="btn btn-danger btn-md">
                <button class="button is-danger logs"
                  OnClick=" location.href='logout.jsp' ">Logout</button>
              </div>
            </div>
          </div>
  <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fosterdb", "root", "1234");
    Statement st = con.createStatement();
    String query = "select * from donation";
    ResultSet rs = st.executeQuery(query);
  %>
  <div class="space"></div>
  <div class="columns animated fadeInUp" id="correction">
    <div class="column">
      <div class="card">
        <div class="card-header">
          <div class="card-header-title is-centered">
              Donation Logs
          </div>
        </div>
        <div class="card-content">

          <table style="width: 100%">
            <tr>
              <th>User id</th>
              <th>Ssn</th>
              <th>Donated item</th>
              <th>Donated Amount</th>
            </tr>

            <%
              while (rs.next()) {
            %>
            <tr>
              <td><%=rs.getString("userid")%></td>
              <td><%=rs.getString("ssn")%></td>
              <td><%=rs.getString("donated_item")%></td>
              <td><%=rs.getString("donated_money")%></td>
            </tr>
            <%
              }
            %>
          </table>
        </div>
      </div>
    </div>
  </div>
    </div>
</body>
</html>
