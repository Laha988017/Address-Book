<!DOCTYPE html>
<html>
<head>
	<title>Address Book</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file = "header.jsp"%>

	<div class="jumbotron text-center">
  		<h1>Address Book</h1>
  		<!--p>To be a part of an esteemed organization, where I can explore my potential  in 
an environment charaterised by opportunity, flexibility, growth and continuously acquire skills</p-->
	</div>

<div class= "container">
	<div class="row row-cols-1 row-cols-md-3">
  <div class="col mb-4">
    <div class="card text-white bg-dark mb-3 text-center">
  	<div class="card-header"><h5 class="card-title">Add</h5></div>
  	<div class="card-body">
    <p class="card-text">Add a new record to MySQL Database</p>
    <a href="add.jsp" class="btn btn-primary">Add Record</a>
  	</div>
	</div>
  </div>
  <div class="col mb-4">
    <div class="card text-white bg-dark mb-3 text-center">
  	<div class="card-header"><h5 class="card-title">View</h5></div>
  	<div class="card-body">
    <p class="card-text">View records in MySQL Database</p>
    <a href="profile.jsp" class="btn btn-primary">View Details</a>
  	</div>
	</div>
  </div>
  <div class="col mb-4">
    <div class="card text-white bg-dark mb-3 text-center">
  	<div class="card-header"><h5 class="card-title">Delete</h5></div>
  	<div class="card-body">
    <p class="card-text">Delete a record from MySQL Database</p>
    <a href="delete.jsp" class="btn btn-primary">Delete Record</a>
  	</div>
	</div>
  </div>
  <div class="col mb-4">
    <div class="card text-white bg-dark mb-3 text-center">
    <div class="card-header"><h5 class="card-title">Update</h5></div>
    <div class="card-body">
    <p class="card-text">Update a record from MySQL Database</p>
    <a href="update.jsp" class="btn btn-primary">Update Record</a>
    </div>
  </div>
  </div>
  <div class="col mb-4">
    <div class="card text-white bg-dark mb-3 text-center">
    <div class="card-header"><h5 class="card-title">Search</h5></div>
    <div class="card-body">
    <p class="card-text">Search a record from MySQL Database</p>
    <a href="search.jsp" class="btn btn-primary">Search Record</a>
    </div>
  </div>
  </div>
  
  
</div>
</div>
	<%@ include file = "footer.jsp"%>
</body>	
</html>