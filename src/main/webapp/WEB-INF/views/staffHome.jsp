<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html lang="en">
<head>
<title>Contact</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link  rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.css">
    
    <script  type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.js"></script>
</head>
<body>
	<%@include file="fragments/header.jsp"%>
	
			<span class="login100-form-title p-b-15">
				<h3 class="p-t-60">Welcome : ${user}!</h3>
				<hr>
			</span>
			<div class="container form-group">
                         <a class="float-right" href="tutorial"><i class="far fa-hand"></i>Upload Staff</a><pre>  </pre>
					</div>
			<table id="myTable" class="table table-striped">
				<thead>
					<tr class="success">
						<td>Staff Name</td>
						<td>Staff Type</td>
						<td>Department</td>
						<td>Email</td>
										</tr>
				</thead>
				<tbody>
					<c:forEach var="tut" items="${tlist }">

						<tr class="danger">
							<td>${tut.tutorialname }</td>
							<td>${tut.tutorialtype }</td>
							<td>${tut.department }</td>
							<td>${tut.upload }</td>
							<td><input type="submit" class="btn btn-success "
								onclick="editTut(${tut.id})" value="Edit"> <input
								type="submit" class="btn btn-danger "
								onclick="deleteTut(${tut.id})" value="Delete"></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
	<%@include file="fragments/footer.jsp"%>
			<script type="text/javascript">
		
		function editTut(id){
			window.location = "${pageContext.request.contextPath}/"+id+"/edit ";
			
		}
		
		function deleteTut(id){
			var msg = confirm("do you want to delete?");
			if(msg == true){
				
				window.location = "${pageContext.request.contextPath}/"+id+"/delete ";
			}
		}
		
		$(document).ready( function () {
		    $('#myTable').DataTable();
		} );
		
		</script>
</body>
</html>