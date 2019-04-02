<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Reset Password | Reset Password Here</title>
  </head>
<body>
<%@include file="fragments/start_header.jsp"%>
<br><br><br>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Get your Password</h3>
				
               <h6> <i class="fas fa-sign-in-alt "></i>
                Please Enter Your Registered Email!
            </h6>
			</div>
			<div class="card-body">
				<form action="userlogin" method="post">
				<input type="text" class="form-control" name="email" placeholder="example@domain.com">
				<div class="input-group form-group">
                        <input class="form-control" type="password"  name="password" placeholder="password" required="" type="text">	
					</div>
					
					<div class="input-group form-group">
                        <input class="form-control" type="password"  name="repeatPassword" placeholder="RepeatPassword" required="" type="text">
					</div>
						<br><br>
						<div class="form-group">
                                <a class="float-right" href="userlogin"><i class="far fa-hand-point-left"></i>Back to Login</a><pre>  </pre>
									</div>
				</form>
			</div>
			
		</div>
	</div>
</div>
</body>
</html>