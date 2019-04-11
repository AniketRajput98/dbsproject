<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import="java.sql.*"%>
</head>
<body>
<%		String radio = request.getParameter("answer"); 
		String searchtype = request.getParameter("searchtype");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fosterdb", "root", "1234");
		Statement st = con.createStatement();
		if("1".equals(radio)){
		String query = "select * from kids where age='" + searchtype + "'";
		}
		else if("2".equals(radio)){
		String query = "select * from kids where ethnicity='" + searchtype + "'";
		}
		else{
		String query = "select * from kids where gender='" + searchtype + "'";
		}
		
		ResultSet rs = st.executeQuery(query);
	%>
<%-- adding  --%>

<div class="card">
   <header class="card-header">
   <p class="card-header-title">
      SEARCHED....
    </p>
    <a href="#" class="card-header-icon" aria-label="more options">
      <span class="icon">
        <i class="fas fa-angle-down" aria-hidden="true"></i>
      </span>
    </a>
  </header>
<div class="container">
  <%
	while (rs.next()) 
		{
			%>
  <div class="column is-half">
          <div class="card">
            
            <div class="card-content">
              <br/>
			  <table style="width:100%">
           <tr>
			  <th colspan="2">Age</th>
			  <th colspan="2">Gender</th>
		   </tr>
              <tr>
             <td colspan="2"><%=rs.getString("age")%></td>
			 <td colspan="2"><%=rs.getString("gender")%></td>
             </tr>
             </table>
   <br>
   <br>
              <div class="subtitle"><center><%=rs.getString("name")%></center></div>
            </div>
          </div>
        </div>
   	<%
}
			%>
</div>
</div>
</body>


</html>