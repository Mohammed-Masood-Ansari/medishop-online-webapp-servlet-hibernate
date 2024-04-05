<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.main-bg {
	background-color: pink;
}

input:focus, button:focus {
	border: 1px solid black;
	box-shadow: none !important;
}

.form-check-input:checked {
	background-color: pink;
	border-color: green;
}

.card, .btn, input {
	border-radius: 2%;
}
.container{
margin-top: 150px;
}
</style>
<meta charset="ISO-8859-1">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Bootstrap 5 - Login Form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" />
</head>

<body class="main-bg">
	<%
	String adminMsg = (String) request.getAttribute("adminMsg");
	%>
	<!-- Login Form -->
	<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="card shadow">
					<div class="card-title text-center border-bottom">
						<h2 class="p-3">Login</h2>
					</div>
					<div class="card-body">
						<%
						if (adminMsg != null) {
						%>
						<h3 style="color: red"><%=adminMsg%></h3>
						<%
						}
						%>
						<form action="loginAdmin" method="post">
							<div class="mb-4">
								<label for="username" class="form-label">Email:</label> <input
									type="text" class="form-control" id="username"
									name="adminEmail" />
							</div>
							<div class="mb-4">
								<label for="password" class="form-label">Password:</label> <input
									type="password" class="form-control" id="password"
									name="adminPassword" />
							</div>
							<div class="d-grid">
								<button type="submit" class="btn btn-warning">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>