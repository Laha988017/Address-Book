<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Delete Process</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file = "header.jsp"%>
   <div class="jumbotron text-center">
      <h1>Create a Database using JSP</h1>
   </div>
   <div class="container text-center">
<%
String phno=request.getParameter("phno");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/TEST", "root", "8017");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM ADDRESSBOOK WHERE phno="+phno);
out.println("Data Deleted Successfully!");%>
	<div class="row row-cols-1 row-cols-md-1">
	<div class="col mb-4">
    <div class="card text-white bg-dark mb-3 text-center">
  	<div class="card-header"><h5 class="card-title">Delete</h5></div>
  	<div class="card-body">
    <p class="card-text">Delete a record from MySQL Database</p>
    <a href="delete.jsp" class="btn btn-primary">Delete more records</a>
  	</div>
	</div>
  </div>
<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</div>

   </div>
   <%@ include file = "footer.jsp"%>
</body>
</html>