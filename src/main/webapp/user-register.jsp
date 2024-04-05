<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.min.css"
	rel="stylesheet" />


</head>
<body>
	<%
	String msg = (String) request.getAttribute("msg");
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 50px;">
						<div class="card-body p-md-2">
							<%
							if (msg != null) {
							%>
							<h3 style="color: red;align-items: center;"><%=msg%></h3>
							<%
							}
							%>
							<div class="row justify-content-center">
								<p
									class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4 text-primary">Create-Your-Account-With-MediShop</p>
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
									<form class="mx-1 mx-md-4" action="userRegister" method="post">

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="text" id="form3Example1c" class="form-control" name="userName"/>
												<label class="form-label" for="form3Example1c">Your
													Name</label>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="email" id="form3Example3c" class="form-control" name="userEmail"/>
												<label class="form-label" for="form3Example3c">Your
													Email</label>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="password" id="form3Example4c"
													class="form-control"  name="userPassword"/> <label class="form-label"
													for="form3Example4c">Password</label>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-key fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="password" id="form3Example4cd"
													class="form-control" name="repeatPassword"/> <label class="form-label"
													for="form3Example4cd">Repeat your password</label>
											</div>
										</div>

										<div>
											<button type="submit" class="btn btn-primary btn-lg">Register</button>
										</div>

									</form>

								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img
										src="https://assets.pharmeasy.in/web-assets/dist/7c645a8d.png"
										class="img-fluid" alt="Sample image" width="320px">

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.umd.min.js"></script>
</body>
</html>