<%@page import="java.sql.*"%>

<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "TEST";
String userid = "root";
String password = "8017";

String phno = request.getParameter("phno");
String name=request.getParameter("name");
String address=request.getParameter("address");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String details=request.getParameter("descp");
if(phno != null)
{
Connection con = null;

//String personPhno = Integer.parseInt(phno);
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
PreparedStatement ps = null;

Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
	<title>Update Process Submit</title>
	<head>
	<title>Add Process</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file = "header.jsp"%>
	<div class="jumbotron text-center">
      <h1>View added information</h1>
      <!--p>To be a part of an esteemed organization, where I can explore my potential  in 
an environment charaterised by opportunity, flexibility, growth and continuously acquire skills</p-->
   </div>
<div class="container text-center">	


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql="Update ADDRESSBOOK set name=?,address=?,dob=?,details=?,gender=? where phno="+phno;
ps = connection.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2, address);
ps.setString(3, dob);
ps.setString(4, details);
ps.setString(5, gender);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<p>Go to Home Page</p>
</div>
<%@ include file = "footer.jsp"%>
</body>
</html>
