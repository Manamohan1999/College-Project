<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="icon" href="images/favicon.ico">
<title>KMBB: Student Automation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1  shrink-to-fit=no">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/css?family=Bitter&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />

<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">
<style type="text/css">
body {


background-image:url("images/kmbblogo.JPG");
         background-repeat: no-repeat;
background-size: cover; -->

background-position: center;
height:auto;
width:auto;

}
</style>



</head>
<body>

<%

if(session.getAttribute("user")==null){
	
	session.removeAttribute("user");
    session.invalidate();
    response.sendRedirect("index.html");
}else{
        
  
 session.removeAttribute("user");
session.invalidate();
}
%>



<h4 class="animated bounce infinite text-center font-weight-bold aqua-gradient color-block">Thank You!, You have successfully logged out.</h4>



  <a class="nav-link" href="index.html"><i class="fa fa-home" aria-hidden="true"></i>Home <span class="sr-only ">(current)</span></a>
<h4 class=" text-center font-weight-bold">want to login again!  <a href="adminlogin.html" class="badge badge-default">Login here</a></h4>







</body>
</html>