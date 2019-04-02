<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Welcome Page | Login to continue...</title>
	
</head>
<style>
body{
background-color: #DFE3E6;
}
h1{
text-align: center;
}
input{
height: 300px;
margin-top: auto;
margin-bottom: auto;
width: 300px;
}
 p{
text-align: right;
}

</style>
<body>
<%@include file="fragments/start_header.jsp"%>
<br><br><br>

<P> ${serverTime}. </P>
<h1>
	Welcome to SherpaChat Tutorial!  
</h1>



  <section class="section" id="features">
    <div class="container">
      <div class="row mt-5">
        <div class="col-lg-4 mt-2">
          <div class="features-desc">
            <h1 class="heading-main mb-5">SherpaChat brings benefits all the way.</h1>
          </div>
        </div>

        <div class="col-lg-8 pl-5 features">
          <div style="overflow:hidden;" class="d-inline-block">
            <h3 class="mb-1">Save time</h3>
            <div class="features-border w-100"></div>
          </div>
          <p class="mb-5">SherpaChat tutorial is a learning hub, a single place for learn and test. You can learn  every skills needs for this platform. </p>

          <div style="overflow:hidden;" class="d-inline-block">
            <h3 class="mb-1">Streamline Management Tutorials</h3>
            <div class="features-border w-100"></div>
          </div>
          <p class="mb-5">Streamline your employee learns with the help of SherpaChat. Now you can create profiles, learn, check and manage skills, all from one place.</p>

          <div style="overflow:hidden;" class="d-inline-block">
            <h3 class="mb-1">Powerful dashboard features</h3>
            <div class="features-border w-100"></div>
          </div>
          <p class="mb-5">Create and manage staff profiles and tutorials from simple yet powerful dashboard.</p>

              </div>
      </div>
    </div>
  </section>

<%@include file="fragments/footer.jsp"%>
</body>
</html>
