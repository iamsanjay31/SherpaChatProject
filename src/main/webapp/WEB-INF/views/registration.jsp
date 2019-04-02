<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Register | Profile register</title>
  </head>
<body>
<%@include file="fragments/start_header.jsp"%>
<br><br><br>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Registration</h3>				
               <h6> <i class="fas fa-sign-in-alt "></i>
                Please Enter Your Information
            </h6>
			</div>
			<div class="card-body">
			
			
			
				<form action="usersignup" method="post">
				
				  
					<div class="row form-group">
					<div class="col-md-4">User (Admin/Staff)</div>
					<div class="col-md-8">
						<select class="select-style form-control" name="userType">
                            <option value="select">Select Your Id Here</option>
                            <option value="admin">Admin</option>
                            <option value="staff">Staff</option>
                        </select>
					</div></div>
					
					<div class="row form-group">
					<div class="col-md-4">Department</div>
					<div class="col-md-8">
						<select class="select-style form-control" name="department">
                            <option value="select">Select Your Department Here</option>
                            <option value="design">Design & Analysis</option>
                            <option value="development">Development</option>
                            <option value="testing">QA & Testing</option>
                            <option value="marketing">Marketing</option>
                            <option value="sales">Sales</option>
                             <option value="seo">SEO Engineering</option>
                        </select>
					</div></div>
					
					<div class="form-group">
					<input type="text" class="form-control" name="username" placeholder="User Name" required="">
					</div>
					<div class="form-group">
					<input type="text" class="form-control" name="name" placeholder="Full Name" required="">
					</div>
					<div class="row form-group">
							<div class="col-md-6"> Date of Birth 
                     <input class="form-control" type="date" data-date-inline-picker="true" name="dateOfBirth"  required=""/></div>
							<div class="col-md-6">Gender
                     <select class="select-style form-control" name="gender">
                            <option value="select">Select Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select> </div>
							</div>
										<div class=" form-group">
					 <input class="form-control" name="address" placeholder="Address" required="" tabindex="1" type="text">	
					</div>
					<div class=" form-group">
					 <input class="form-control" name="reference" placeholder="Reference" required="" tabindex="1" type="text">	
					</div>
					<div class=" form-group">
					 <input class="form-control" name="mobilePhone" placeholder="Phone Number" required="" type="text">	
					</div>
					<div class=" form-group">
					  <input class="form-control" name="email" placeholder="example@domain.com" required="" type="email">	
					</div>
					<div class=" form-group">
                        <input class="form-control" type="password"  name="password" placeholder="password" required="" type="text">	
					</div>
											<div class="form-group">
					<h6>By clicking Register, you agree to our <a href="terms&conditions">terms</a> . You may receive email <br> notifications for confirmation soon.</h6>
						<input  type="submit" value="Register"  class="btn float-left reg_btn">
					</div>
						<div class="form-group">
                         <a class="float-right" href="userlogin"><i class="far fa-hand-point-left"></i>Back to Login</a><pre>  </pre>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="fragments/footer.jsp"%>
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/minified/polyfiller.js"></script> 
</body>
</html>