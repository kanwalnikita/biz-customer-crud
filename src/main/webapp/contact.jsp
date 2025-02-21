 
<html lang="en">
<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<style>
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
.footer {
	background-color: #6f42c1; /* Dark Blue */
	color: #ffffff;
	padding: 3px;
	text-align: center;
}
</style>

</head>

<body>
	<header>
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
					<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">About</a></li>
					<li class="nav-item"><a class="nav-link" href="help.jsp">Help</a>
					</li>



				</ul>
			</div>
		</nav>
	


	</header>
	<main>
 <a href="home.jsp" class="btn btn-primary mb-3">&larr; Back</a>

		<h1 class="text-center my-3 ">Company Information</h1>
		<div class="container my-5">
			<div class="row justify-content-center align-items-center g-2">
				<div class="col-md-5">
					<div class="table-responsive">
						<table class="table table-bordered table-hover table-info">

							<tbody>
								<tr class="">
									<td>Company Name</td>
									<td>SDAC</td>

								</tr>
								<tr class="">
									<td>Contact no</td>
									<td>915 2054 205</td>
								</tr>
								<tr class="">
									<td>Email</td>
									<td>centerhead@sdacinfo.com</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>

		<div class="container">
			<div class="row justify-content-center align-items-center g-2">
				<bs5-form>
				<div class="card">
					<h3 class="text-center my-2">Form</h3>
					<div class="card-body">

						<div class="form-floating mb-3">
							<input type="text" class="form-control" name="formId1"
								id="formId1" placeholder="FullName" />
							<label for="formId1">Name</label>
						</div>
						<div class="col">
							<div class="form-floating mb-3">
								<input type="email" class="form-control" name="formId1"
									id="formId1" placeholder="abc@gmail.com" />
								<label for="formId1">Email</label>
							</div>
							<div class="col">
								<div class="form-floating mb-3">
									<input type="email" class="form-control" name="formId1"
										id="formId1" placeholder="query" aria-colspan="3" />
									<label for="formId1">Query</label>
								</div>

							</div>
						</div>
				</bs5-form>
			</div>


		</div>

	</main>
	 <footer class="footer py-2 my-2">
			<div class="container">
				<p>&copy; 2024 Netherlands. All rights reserved.</p>
			</div>
		</footer>



	<!-- Bootstrap JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>
</html>