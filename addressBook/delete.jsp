<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "TEST";
String userid = "root";
String password = "8017";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function alt(){
		alert("Do you want to delete?");
	}
</script>
<body>
	<%@ include file = "header.jsp"%>
   <div class="jumbotron text-center">
      <h1>Delete data from Database </h1>
      <!--p>To be a part of an esteemed organization, where I can explore my potential  in 
an environment charaterised by opportunity, flexibility, growth and continuously acquire skills</p-->
   </div>
   <div class="container">

<table class = "table table-hover">
	<thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Address</th>
      <th scope="col">Date of Birth</th>
      <th scope="col">Gender</th>
      <th scope="col">Details</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ADDRESSBOOK";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tbody>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("phno") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("details") %></td>
<td><a href= "delete_process.jsp?phno=<%=resultSet.getString("phno") %>"><button type="button" class="delete" onclick="alt();">Delete</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tbody>
</table>
</div>
<%@ include file = "footer.jsp"%>
</body>
</html>