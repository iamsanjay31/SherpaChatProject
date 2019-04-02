<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update tutorial form</title>
</head>
<body>
	<%@include file="fragments/header.jsp"%>
	<br>
	<br>
	<br>
	<span class="login100-form-title p-b-5 p-t-50"> tutorial Form </span>
	<spring:form action="${pageContext.request.contextPath}/updateTutorial" method="post" modelAttribute="emodel">
		<table>
			<tr>
				<td>Tutorial Name</td>
				<td><spring:input class="form-control"
						 path="tutorialname" /></td>
			</tr>
			<tr>
				<td>Tutorial Type</td>
				<td><spring:input class="form-control" path="tutorialtype" /></td>
								</tr>
			<tr>
				<td>Department</td>
				<td class="form-control">
				<td><spring:select class="form-control" path="department">
						<spring:option value="">Select Department Here</spring:option>
						<spring:option value="development">Development</spring:option>
						<spring:option value="marketing">Marketing</spring:option>

					</spring:select></td>

				</td>
			</tr>
			<tr>
				<td>Upload File</td>
				<td><spring:input class="form-control" path="upload" type="date" /></td>
			</tr>
			<tr>
				<td><br>
				<input class="form-control" type="submit" value="save"></td>

			</tr>

		</table>
		<spring:hidden path="id"/>
	</spring:form>
	<%@include file="fragments/footer.jsp"%>
</body>
</html>