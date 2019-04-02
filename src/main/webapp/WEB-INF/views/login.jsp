<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Login Page | Login Here</title>
  </head>
<body>
<%@include file="fragments/start_header.jsp"%>
<br><br>
<br><br>
<div class="container">
	<div class="d-flex justify-content-center">
		<div class="card">
			<div class="card-header">
				<h3>Log In</h3>
				
               <h6> <i class="fas fa-sign-in-alt "></i>
                Please Enter Your Information
            </h6>
			</div>
			<div class="card-body">
			
			
				<form action="userlogin" method="post">
				<h5 style="color:red;">${error} </h5>
				
				<hr>
				
				<!--  	<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-lightbulb"></i></span>
						</div>
						<input type="text" class="form-control" name="usertype" placeholder="id">
					</div>  -->
				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" name="username" placeholder="username">
					</div>
					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control"   name="password" placeholder="password">
					</div>
					
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div>
					<div class="form-group">
						<input type="submit" value="Login" class="btn float-right login_btn">
					</div>
					
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Don't have an account?<a href=usersignup>Register Here</a>
				</div>
				
				<div class="d-flex justify-content-center">
					<a href="forgotpassword">Forgot your password?</a>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="fragments/footer.jsp"%>
</body>
</html>