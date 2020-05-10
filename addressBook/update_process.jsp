<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String phno = request.getParameter("phno");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ADDRESSBOOK where phno="+phno;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<title>Update_Process</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<body>
<%@ include file = "header.jsp"%>
	<div class="container">
		<br>
		<h3 class="card-title text-center">Add Record</h3>
		<div class="jumbotron ">

		<form action="update_process_submit.jsp" method="get">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input type="text" class="form-control" placeholder="Subhajit Laha" name="name" value="<%=resultSet.getString("name") %>">
    </div>
    <div class="form-group col-md-6">
      <label name = "phno">Phone Number</label>
      <input type="number" readonly="true" class="form-control"  name="phno" value="<%=resultSet.getString("phno") %>">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control"  placeholder="1234 Main St" name="address" value="<%=resultSet.getString("address") %>">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="Dob">Date of Birth</label>
      <input type="date" class="form-control" placeholder="01-01-2020" name="dob" value="<%=resultSet.getString("dob") %>">
    </div>
    <div class="form-group">
      <label for="inputZip">Description</label>
      <input type="textarea" class="form-control" name="descp" value="<%=resultSet.getString("details") %>">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
    	<%String gender = resultSet.getString("gender");%>
    	<%if( gender == "m")
    	{
    	%>
      <input class="form-check-input" type="radio" name = "gender" value="m" checked>
        Male
      <br>
      <input class="form-check-input" type="radio" name = "gender" value="f">
        Female
        <%}
        	else{%>
        	<input class="form-check-input" type="radio" name = "gender" value="m" >
        Male
      <br>
      <input class="form-check-input" type="radio" name = "gender" value="f" checked>
        Female
        <%}
    
       %>

<%}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Add Details</button>
</form>

	</div>
</div>
	<%@ include file = "footer.jsp"%>
</body>
</html>