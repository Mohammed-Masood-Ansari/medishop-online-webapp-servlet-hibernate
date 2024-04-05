<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
    margin: 0;
    font-family: Arial, sans-serif;
}

.header {
    background-color: aqua;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    padding: 10px 0;
    position: sticky;
    top: 0;
}

.header-container {
    display: flex;
    align-items: center;
    justify-content: space-between;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.logo img {
    max-height: 40px;
    border-radius: 50%;
}

.nav-links ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

.nav-links ul li {
    display: inline-block;
    margin-right: 20px;
}

.nav-links ul li:last-child {
    margin-right: 0;
}

.nav-links ul li a {
    text-decoration: none;
    color: #222;
}

.user-actions a {
    text-decoration: none;
    color: #1a2d5a;
    margin-left: 20px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header class="header">
        <div class="header-container">
            <div class="logo">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4OqmpTTuLVUC8iwq-TaeAJvZ4krEW6_0kvg&usqp=CAU"
                 alt="Pharmeasy Logo">
            	<label>MediShop Online Dukan</label>
            </div>
            <nav class="nav-links">
                <ul>
                    <li><a href="#">Medicines</a></li>
                    <li><a href="#">Healthcare Products</a></li>
                    <li><a href="#">Diagnostic Tests</a></li>
                    <li><a href="#">Consult Doctors</a></li>
                </ul>
            </nav>
            <div class="user-actions">
                <a href="user-login.jsp">Login</a>
                <a href="user-register.jsp">Sign Up</a>
            </div>
        </div>
    </header>
</body>
</html>