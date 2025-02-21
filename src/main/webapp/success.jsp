<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Success</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap Icons -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #ffffff;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.card {
	border-radius: 10px;
	box-shadow: 10px 10px 10px 10px rgb(71, 98, 74);
	text-align: center;
	height: 20vh;
	width: 50vh;
}

.card-header {
	background-color: #d4edda;
	color: #155724;
	font-size: 24px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.card-body {
	background-color: #ffffff;
	color: #155724;
}

.success-icon {
	padding: 10%;
	font-size: 4rem;
	color: #28a745;
}

.btn-primary {
	background-color: #28a745;
	border: none;
}

.btn-primary:hover {
	background-color: #218838;
}

.spinner-border {
	width: 3rem;
	height: 3rem;
}
</style>
<script>
	setTimeout(function() {
		window.location.href = "home.jsp";
		}, 5000);
</script>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">Success!</div>
			<div class="card-body">
				<div class="mb-3">
					<i class="bi bi-check-circle success-icon"></i>
				</div>
				<h3>Your action was completed successfully.</h3>

			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
