<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<style>
body {
	background-color: #f8f9fa;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.navbar {
	background-color: #6f42c1; /* Purple */
	padding: 0.5rem 1rem;
}

.navbar-brand img {
	height: 40px;
	width: auto;
	margin-right: 15px;
}

.nav-link, .dropdown-item {
	color: white !important;
	background-color: #6f42c1;
}

.nav-link:hover, .dropdown-item:hover {
	color: #e2e6ea !important; /* Light gray for hover */
	background-color: #6f42c2;
}

.dropdown-menu {
	background-color: #6f42c1; /* Match menu to buttons */
	border: none;
}

.hero-section {
	background:
		url("https://th.bing.com/th/id/OIP.vI-mK443-WwvhGFI3OE5QAHaH_?rs=1&pid=ImgDetMain")
		no-repeat center center/cover;
	color: white;
	padding: 80px 0;
	text-align: center;
	background-blur: 5px;
	color: white; /* Optional effect to improve text readability */
}

.hero-box {
	background-color: rgba(0, 0, 0, 0.5);
	/* Dark overlay for better text readability */
	padding: 40px;
	border-radius: 10px;
	max-width: 600px;
	margin: 0 auto;
}

.content-container {
	padding: 40px 20px;
}

.image-text-container {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 40px;
}

.image-text-container img {
	border-radius: 10px;
	height: 30%;
	width: 600px;
}

.text-content {
	max-width: 100%;
}

.hero-box h1 {
	font-size: 3rem;
	font-weight: bold;
	margin-bottom: 20px;
	animation: fadeInDown 1s ease-in-out;
}

.hero-box p {
	font-size: 1.25rem;
	margin-top: 10px;
	animation: fadeInUp 1.5s ease-in-out;
}

@
keyframes fadeInDown {from { opacity:0;
	transform: translateY(-30px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
keyframes fadeInUp {from { opacity:0;
	transform: translateY(30px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.footer {
	background-color: #6f42c1; /* Dark Blue */
	color: #ffffff;
	padding: 5px;
	text-align: center;
}
</style>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
		<a class="navbar-brand" href="#"> <img
			src="https://th.bing.com/th/id/OIP.4kxEi28uoSZ1zVGP-elVHQHaHa?w=198&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7"
			class="img-fluid rounded-circle" height="100" width="100" alt="Logo">
			<!-- Replace 'logo.png' with your logo path -->
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="contact.jsp">About</a></li>
				<li class="nav-item"><a class="nav-link" href="help.jsp">Help</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="signup.jsp">Signup</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="customerDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Customer </a>
					<div class="dropdown-menu" aria-labelledby="customerDropdown">
						<a class="dropdown-item" href="insert.jsp">Add Customer</a> <a
							class="dropdown-item" href="update.jsp">Update Customer</a> <a
							class="dropdown-item" href="del.jsp">Delete Customer</a> <a
							class="dropdown-item" href="profile.jsp">Show Customer</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#">Product</a></li>
				<li class="nav-item"><a class="nav-link" href="#">BI</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Report</a></li>
			</ul>
		</div>
	</nav>

	<!-- Hero Section -->
	<section class="hero-section">
		<div class="hero-box">
			<h1>Welcome to Our Management System</h1>
			<p>Efficiently manage your inventory, sales, and customers with
				ease.</p>
		</div>
	</section>
	<div class="content-container">
		<div class="container">
			<div class="image-text-container">
				<!-- Second Image and Text -->
				<img
					src="https://www.questionpro.com/blog/wp-content/uploads/2023/02/customer-support.jpg">
				<div class="text-content">
					<h3>Dedicated Customer Support</h3>
					<p>We prioritize customer satisfaction with our dedicated
						support team available 24/7. Whether you have questions or need
						assistance, our experts are here to ensure a smooth and seamless
						experience.</p>
				</div>
			</div>
			<div class="image-text-container">
				<!-- First Image and Text -->
				<div class="text-content">
					<h3>Efficient Export Solutions</h3>
					<p>Our company provides top-notch export solutions tailored to
						your needs. From handling logistics to ensuring timely delivery,
						we manage every aspect of the export process to help you expand
						your business across borders.</p>
				</div>


				<img
					src="https://www.equitylogistic.com/blogs/admin/assets/images/blog/09bdc55fc5c42c59d1710a0cc79775fe.jpg"
					alt="Export Solutions">
			</div>
		</div>
		<footer class="footer">
			<div class="container">
				<p>&copy; 2024 Netherlands. All rights reserved.</p>
			</div>
		</footer>
		<!-- Bootstrap and jQuery JS -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
