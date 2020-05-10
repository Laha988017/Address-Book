<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Create a Database using JSP</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
   <%@ include file = "header.jsp"%>
   <div class="jumbotron text-center">
      <h1>View the Database</h1>
      <!--p>To be a part of an esteemed organization, where I can explore my potential  in 
an environment charaterised by opportunity, flexibility, growth and continuously acquire skills</p-->
   </div>
   <div class="container">
<%
Connection connection = null;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TEST", "root", "8017");
Statement statement = con.createStatement();
String query = "SELECT *FROM ADDRESSBOOK";
ResultSet resultSet = statement.executeQuery(query);

%>
<table class = "table table-hover">
   <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">phno</th>
      <th scope="col">address</th>
      <th scope="col">dob</th>
      <th scope="col">gender</th>
      <th scope="col">details</th>
    </tr>
  </thead>
<%
while(resultSet.next()){%>
<tbody>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("phno") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("details") %></td>
</tr>
<%
}
con.close();
}
catch (Exception e)
{
out.println("An error occurred.");
}
%>
</tbody>
</table>
</div>
<%@ include file = "footer.jsp"%>
</body>
</html>