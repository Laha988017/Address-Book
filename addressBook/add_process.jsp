<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
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
String name=request.getParameter("name");
String phno=request.getParameter("phno");
String address=request.getParameter("address");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String descp=request.getParameter("descp");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/TEST", "root", "8017");
Statement st=conn.createStatement();

String strQuery = "SELECT COUNT(*) FROM ADDRESSBOOK where phno='"+phno+"'";
ResultSet rs1 = st.executeQuery(strQuery);
rs1.next();
String Countrow = rs1.getString(1); //out.println(Countrow);
if(Countrow.equals("0")){
	int i=st.executeUpdate("insert into ADDRESSBOOK(name,phno,address,dob,gender,details)values('"+name+"','"+phno+"','"+address+"','"+dob+"','"+gender+"','"+descp+"')");
	out.println("<center>Data is successfully inserted!");
	String sql = "SELECT * FROM ADDRESSBOOK WHERE phno="+phno;
	ResultSet rs = st.executeQuery(sql);
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
while(rs.next()){%>
<tbody>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("phno") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("dob") %></td>
<td><%=rs.getString("gender") %></td>
<td><%=rs.getString("details") %></td>
</tr>
<%}
}
else{
	out.println("Phone Number already exists !");
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</tbody>
</table>
<br><a href="add.jsp" class="btn btn-primary">Add more</button></a>
<a href="index.jsp" class="btn btn-primary">Home Page</a>
</div>
<br>
<%@ include file = "footer.jsp"%>
</body>
</html>