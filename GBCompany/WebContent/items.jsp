<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="ProjectService.Project" %>
<%
boolean i=false;
if (request.getParameter("Name") != null)
{
	if (request.getParameter("Name") != null)
	 {
	 Project Obj = new Project();
	 String stsMsg = Obj.insertProject(request.getParameter("Name"),
	 request.getParameter("Description"),
	 request.getParameter("Language"),
	 request.getParameter("Devname"),
	 request.getParameter("Price"));
	 session.setAttribute("statusMsg", stsMsg);
	 i=true;
	 } 
}

//Delete item----------------------------------
if (request.getParameter("ID") != null)
{
Project Obj = new Project();
String stsMsg = Obj.deleteProject(request.getParameter("ID"));
session.setAttribute("statusMsg", stsMsg);
i=true;
}
%>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
        <div class="container"><a class="navbar-brand logo" href="#">Gadget Badget</a>
<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
<span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>

            <div class="collapse navbar-collapse"
                id="navbarNav">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="NEw.html">Home</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="customer.jsp">Customer Request</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="request.jsp">View Request</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>
    <main class="page lanidng-page">
        <section class="portfolio-block photography">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-md-6 col-lg-4 item zoom-on-hover"><a href="#"></a></div>
                </div>
            </div>
        </section>
       
    </main>

<h1 class="text-center"> Project Management</h1>
<form method="post" action="items.jsp">
<div class="container">
 <div class="row">
 <div class="col">

Project Name: <input name="Name" type="text"  class="form-control"><br>
 Language: <input name="Language" type="text"  class="form-control"><br>
  Developer Name: <input name="Devname" type="text"  class="form-control"><br>
 Description: <input name="Description" type="text"  class="form-control"><br>
 Price: <input name="Price" type="text"  class="form-control"><br>
  <div class="col text-center">
 <input name="btnSubmit" type="submit" value="Save"class="btn btn-primary"><br>
</div>
 </div>
 </div>
</div>
</form>
<div class="alert alert-success">
 <% 
 
 
 if( i){
 out.print(session.getAttribute("statusMsg"));
 }
 
 %>
</div>
<br>

    <footer class="page-footer">
        <div class="container">
            <div class="links">
<a href="#">About me</a><a href="#">Contact me</a><a href="#">Privacy</a></div>
            <div class="social-icons"><a href="#">
<i class="icon ion-social-facebook"></i></a>
<a href="#"><i class="icon ion-social-instagram-outline"></i></a>
<a href="#"><i class="icon ion-social-twitter"></i></a></div>
        </div>
    </footer>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>