<!DOCTYPE html>
<html>
<head>
	<title>Add</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file = "header.jsp"%>
	<div class="container">
		<br>
		<h3 class="card-title text-center">Add Record</h3>
		<div class="jumbotron ">

		<form action="add_process.jsp" method="get">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input type="text" class="form-control" placeholder="Subhajit Laha" name="name">
    </div>
    <div class="form-group col-md-6">
      <label name = "phno">Phone Number</label>
      <input type="number" class="form-control" placeholder="987654321" name="phno">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control"  placeholder="1234 Main St" name="address">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="Dob">Date of Birth</label>
      <input type="date" class="form-control" placeholder="01-01-2020" name="dob">
    </div>
    <div class="form-group">
      <label for="inputZip">Description</label>
      <input type="textarea" class="form-control" name="descp">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="radio" name = "gender" value="m">
        Male
      <br>
      <input class="form-check-input" type="radio" name = "gender" value="f">
        Female
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Add Details</button>
</form>

	</div>
</div>
	<%@ include file = "footer.jsp"%>
</body>
</html>
