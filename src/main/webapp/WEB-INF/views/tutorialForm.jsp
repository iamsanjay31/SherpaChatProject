<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>tutorial form</title>
</head>
<body>
	<%@include file="fragments/header.jsp"%>
	<br>
	<br>
	<br>
	<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
	<span class="login100-form-title p-b-5 p-t-50"> tutorial Form </span>
	<div class="card-body">
	<spring:form action="tutorialForm" method="post" modelAttribute="emodel">
		<table>
		<div class="row form-group">
					<div class="col-md-4">Department</div>
					<div class="col-md-8">
						<select class="select-style form-control" path="department">
                            <option value="select">Select Department </option>
                            <option value="design">Design & Analysis</option>
                            <option value="development">Development</option>
                            <option value="testing">QA & Testing</option>
                            <option value="marketing">Marketing</option>
                            <option value="sales">Sales</option>
                             <option value="seo">SEO Engineering</option>
                        </select>
					</div></div>	
		<div class="form-group">
			Tutorial Name
				<spring:input type="text" class="form-control" placeholder="tutorial name" path="tutorialname" />
						</div>
						
		<div class="form-group">
			Tutorial Type
				<spring:input type="text" class="form-control" placeholder="tutorial type" path="tutorialtype" />
						</div>
						
		<div class="form-group">
			Tutorial Upload
				<spring:input type="text" class="form-control" placeholder="tutorial upload" path="upload" />
						</div>		
			<h6>You can Create/Read/Update/Delete tutorial here.</h6>
			<tr>
				<td><br>
				<input class="form-control" type="submit" value="update"></td>
			</tr>   
		</table>
			</spring:form>
	</div>
	</div>
	</div>
	</div>
	<%@include file="fragments/footer.jsp"%>
</body>
</html>