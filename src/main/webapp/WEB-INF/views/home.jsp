<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home Page</title>
</head>

<body>
<%@include file="fragments/header.jsp"%>
<br><br><br>

<div class="container">
<div class="row">
<div class="col">
<div class="card" style="width: 28rem; margin-bottom:3rem;">
  <div class="card-body">
    <h5 class="card-title">SEO Engineering Department</h5>
    <h6 class="card-subtitle mb-2 text-muted">Search Engine Optimization</h6>
    <p class="card-text">Search engine optimization (SEO) is the practice of increasing the quantity and quality of traffic to your website through organic search engine results.</p>
    <a href="seo" class="card-link">Go to tutorial</a>
    <a href="seoTest" class="card-link">Test</a>
  </div>
</div>
</div>
<div class="col">
<div class="card" style="width: 28rem; margin-bottom:3rem;">
  <div class="card-body">
    <h5 class="card-title">Development Department</h5>
    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="card-link">Go to tutorial</a>
    <a href="#" class="card-link">Test</a>
  </div>
</div>
</div>
<div class="col">
<div class="card" style="width: 28rem; margin-bottom:3rem;">
  <div class="card-body">
    <h5 class="card-title">Design & Analysis Department</h5>
    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="card-link">Go to tutorial</a>
    <a href="#" class="card-link">Test</a>
  </div>
</div>
</div>
<div class="col">
<div class="card" style="width: 28rem; margin-bottom:3rem;">
  <div class="card-body">
    <h5 class="card-title">Marketing Department</h5>
    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="card-link">Go to tutorial</a>
    <a href="#" class="card-link">Test</a>
  </div>
</div>
</div>

</div>
</div>




<%@include file="fragments/footer.jsp"%>
</body>
</html>
