<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.gradient-custom {
	/* fallback for old browsers */
	background: #6a11cb;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1))
}
</style>
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
	<section class="vh-100">

		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-secondary text-white"
						style="border-radius: 5rem;">
						<div class="card-body p-5 text-center">
							<%
							if (msg != null) {
							%>
							<h3 style="color: red; align-items: center;"><%=msg%></h3>
							<%
							}
							%>
							<div class="mb-md-5 mt-md-4 pb-5">

								<h2 class="fw-bold mb-2 text-uppercase">Login</h2>


								<p class="text-white-50 mb-5">Please enter your login and
									password!</p>

								<form action="userLogin" method="post">

									<div class="form-outline form-white mb-4">
										<input type="email" id="typeEmailX"
											class="form-control form-control-lg"  name="userEmail"/> <label
											class="form-label" for="typeEmailX">Email</label>
									</div>

									<div class="form-outline form-white mb-4">
										<input type="password" id="typePasswordX"
											class="form-control form-control-lg" name="userPassword" /> <label
											class="form-label" for="typePasswordX">Password</label>
									</div>

									<p class="small mb-5 pb-lg-2">
										<a class="text-white-50" href="#!">Forgot password?</a>
									</p>

									<button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>

								</form>

								<div class="d-flex justify-content-center text-center mt-4 pt-1">
									<a href="#!" class="text-white"><i
										class="fab fa-facebook-f fa-lg"></i></a> <a href="#!"
										class="text-white"><i
										class="fab fa-twitter fa-lg mx-4 px-2"></i></a> <a href="#!"
										class="text-white"><i class="fab fa-google fa-lg"></i></a>
								</div>

							</div>

							<div>
								<p class="mb-0">
									Don't have an account? <a href="user-register.jsp"
										class="text-white-50 fw-bold">Sign Up</a>
								</p>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>