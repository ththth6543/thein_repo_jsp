<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&icon_names=home" />
<title>Welcome</title>
</head>
<body>
	<div class="container py-4">
		<header class="pb-3 mb-4 border-bottom">
			<a href="./welcome.jsp"
				class="d-flex align-items-center text-dark text-decoration-none">
				<span class="material-symbols-outlined me-2">home</span>
				<span class="fs-4">Home</span>
			</a>
		</header>

		<%!String greeting = "Welcome to book Shopping Mall";
	String tagline = "Welcome to Web Market";%>

		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold"><%=greeting%></h1>
				<p class="col-md-8 fs-4">BookMarket</p>
			</div>
		</div>

		<div class="row align-items-md-stretch text-center">
			<div class="col-md-12">
				<div class="h-100 p-5">
					<h3><%=tagline%></h3>
					<p>현재 접속 시각: </p>
				</div>
			</div>
		</div>

		<footer class="pt-3 mt-4 text-body-secondary border-top">
			&copy; BookMarket </footer>

	</div>
</body>
</html>