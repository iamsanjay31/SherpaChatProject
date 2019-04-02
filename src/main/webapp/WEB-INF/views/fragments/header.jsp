<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!--Bootsrap 4 CDN-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!--Fontawesome CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default fixed-top   ">
	<a class="navbar-brand" href="https://www.sherpachat.com">
<img border="0" src="resources/image/SherpaChat-LOGO.png" width="40" height="40">
</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/mainHome">Home<span
					class="sr-only">(current)</span></a></li>
								<li class="nav-item dropdown nav-item active"><a
				class="nav-link dropdown-toggle nav-link" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Department </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Analysis & Desin</a> <a
						class="dropdown-item" href="#">Development</a> <a
						class="dropdown-item" href="#">Testing & QA</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Marketing</a> <a
						class="dropdown-item" href="#">Sales</a>
				</div></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/abouts">About</a></li>
						<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/thome">Tutorial</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/seoTest">Test</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/staffhome">Staff</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/contacts">Contact</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/logout">Logout<span
					class="sr-only">(current)</span></a></li>
		</ul>

	</div>
	</nav>
	<!-- End navbar -->
	
	  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
</body>
</html>