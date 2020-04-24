<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
<body>

<%
    if(session.getAttribute("userpassword")==null){
    	session.removeAttribute("userpassword");
    session.invalidate();
    response.sendRedirect("hodlogin.html");
        
    }

%>
</body>
</html>


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
  <link rel="stylesheet" href="css/admindasbdstyle.css">
  <!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha256-NuCn4IvuZXdBaFKJOAcsU2Q3ZpwbdFisd5dux4jkQ5w=" crossorigin="anonymous" />


  <style>
 .map-container{
overflow:hidden;
padding-bottom:56.25%;
position:relative;
height:0;
}
.map-container iframe{
left:0;
top:0;
height:100%;
width:100%;
position:absolute;
}
  </style>
</head>

<body class="grey lighten-3">

  <!--Main Navigation-->
  <header>

    <!--******************************* Navbar starts here*************************** -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar aqua-gradient color-block">
      <div class="container-fluid">

        <!-- Brand -->
        <a class="navbar-brand waves-effect" href="index.html" target="_blank">
          <strong class="blue-text">HOME</strong>
        </a>

        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

          <!-- ******************navbar items starts here*************** -->
       <!--    <ul class="navbar-nav ml-auto font-weight-bold">
            <li class="nav-item active">
              <a class="nav-link waves-effect" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="#" target="_blank">About</a>
                
            </li>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="#/" target="_blank">Setting</a
               >
            </li>
      
          </ul> -->

          <!-- navbar social icons -->
    <ul class="navbar-nav ml-auto nav-flex-icons">
      <li class="nav-item">
       <a class="nav-link waves-effect waves-light" href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin" target="_blank">1
          <i class="fas fa-envelope"></i>
        </a>
      </li>
      <li class="nav-item avatar dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">
          <img src="images/logo22.png" height="30" width="30" class="rounded-circle z-depth-0"
            alt="avatar image">
        </a>
        <div class="dropdown-menu dropdown-menu-lg-right dropdown-secondary aqua-gradient color-block"
          aria-labelledby="navbarDropdownMenuLink-55">
          <a class="dropdown-item" href="#">My Account</a>
          <a class="dropdown-item" href="adminlogoutDAO.jsp">Logout</a>
                 </div>
      </li>
    </ul>
           <!-- navbar social icons ends here -->

        </div>

      </div>
    </nav>
    <!--********************************* Navbar ends here************************************* -->

    <!-- ************************************Sidebar menu***************************************** -->
    <div class="sidebar-fixed position-fixed aqua-gradient color-block">

      <a class="logo-wrapper waves-effect">
        <img src="images/logo22.png" alt="logo" class="img-fluid" > <p class="text-center font-weight-bold ">HOD Panel</p>
      </a>
      <div class="list-group list-group-flush">
        <a href="#" class="list-group-item active waves-effect">
          <i class="fas fa-chart-pie mr-3"></i>Dashboard
        </a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-address-card mr-3"></i>Profile</a><div></div>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>Update</a><div></div>
        <a href="#gmap" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-map mr-3"></i>Maps</a><div></div>
       




   <a href="#collapseExamplesidebar1" class="list-group-item list-group-item-action waves-effect" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExamplesidebar1">
   <i class="fas fa-user mr-3"></i>Staff <i class="fas fa-angle-down rotate-icon ml-5"></i></a>
  <div class="collapse" id="collapseExamplesidebar1">
      <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Add Staff</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Edit Staff</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>View Staff</a>
   </div>
   
   
   <a href="#collapseExamplesidebar2" class="list-group-item list-group-item-action waves-effect" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExamplesidebar2">
   <i class="fas fa-user-graduate mr-3"></i>Attendance <i class="fas fa-angle-down rotate-icon ml-4"></i></a>
  <div class="collapse" id="collapseExamplesidebar2">
      <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Add Attendance</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Edit Attendance</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>View Attendance</a>
   </div>


   <a href="#collapseExamplesidebar3" class="list-group-item list-group-item-action waves-effect" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExamplesidebar3">
   <i class="fas fa-user-graduate mr-3"></i>Internal Marks <i class="fas fa-angle-down rotate-icon ml-4"></i></a>
  <div class="collapse" id="collapseExamplesidebar3">
      <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Add Marks</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Edit Marks</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>View Marks</a>
   </div>


     <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>Apply Leave </a>




      </div>

    </div>
    <!-- ***********************************Sidebar ends here **************************** -->

  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="pt-5 mx-lg-5">
    <div class="container-fluid mt-5">

      <!--Grid row-->
      <div class="row wow fadeIn">

        <!--Grid column-->
        <div class="col-md-6 mb-4">

          <!--Card-->
          <div class="card aqua-gradient color-block" id="gmap">

            <!-- Card header -->
            <div class="card-header font-weight-bold">Google map</div>

            <!--Card content-->
            <div class="card-body">
              <!--Google map-->
             <div id="map-container-google-2" class="z-depth-1-half map-container" style="height: 500px">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3742.4230751978644!2d85.80413331439527!3d20.282748018202696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a19082aea1df767%3A0x8b0167eef417d866!2sKMBB+College+Of+Engineering+%26+Technology!5e0!3m2!1sen!2sin!4v1460015210033" frameborder="0"
                  style="border:0" allowfullscreen></iframe>
              </div>

              <!--Google Maps-->

            </div>

          </div>
          <!--/.Card-->

        </div>
        <!--Grid column-->
 
      </div>
      <!--Grid row-->

    </div>
  </main>
  <!--Main layout-->

  <!--******************Footer starts here*******************************-->
  <footer class="page-footer text-center font-small primary-color-dark darken-2 mt-4 wow fadeIn">
    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
      <a href="https://www.facebook.com/mdbootstrap" target="_blank">
        <i class="fab fa-facebook-f mr-3"></i>
      </a>

      <a href="https://twitter.com/MDBootstrap" target="_blank">
        <i class="fab fa-twitter mr-3"></i>
      </a>

      <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
        <i class="fab fa-youtube mr-3"></i>
      </a>

      <a href="https://plus.google.com/u/0/b/107863090883699620484" target="_blank">
        <i class="fab fa-google-plus mr-3"></i>
      </a>

     

      <a href="https://pinterest.com/mdbootstrap" target="_blank">
        <i class="fab fa-pinterest mr-3"></i>
      </a>

      <a href="https://github.com/mdbootstrap/bootstrap-material-design" target="_blank">
        <i class="fab fa-github mr-3"></i>
      </a>

    
    </div>
    <!-- Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
      &copy; 2020 Copyright:
      <a href="https://kmbb.in" target="_blank"> kmbb.in </a>
    </div>
    <!--/.Copyright-->

  </footer>
  <!--*********************************/.Footer ends here*******************************************************-->

  <!-- SCRIPTS -->

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/js/mdb.min.js" integrity="sha256-RyKFOSKnuKFSYAyJlfeHdb8ljBAbLJOSh9Bz8pzhhkY=" crossorigin="anonymous"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();

  </script>

  <!--Google Maps-->
  <script src="https://maps.google.com/maps/api/js"></script>
  <script>
    // Regular map
    function regular_map() {
      var var_location = new google.maps.LatLng(40.725118, -73.997699);

      var var_mapoptions = {
        center: var_location,
        zoom: 14
      };

      var var_map = new google.maps.Map(document.getElementById("map-container"),
        var_mapoptions);

      var var_marker = new google.maps.Marker({
        position: var_location,
        map: var_map,
        title: "KMBB college "
      });
    }

    new Chart(document.getElementById("horizontalBar"), {
      "type": "horizontalBar",
      "data": {
        "labels": ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Grey"],
        "datasets": [{
          "label": "My First Dataset",
          "data": [22, 33, 55, 12, 86, 23, 14],
          "fill": false,
          "backgroundColor": ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)",
            "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)",
            "rgba(54, 162, 235, 0.2)",
            "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)"
          ],
          "borderColor": ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)",
            "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)",
            "rgb(201, 203, 207)"
          ],
          "borderWidth": 1
        }]
      },
      "options": {
        "scales": {
          "xAxes": [{
            "ticks": {
              "beginAtZero": true
            }
          }]
        }
      }
    });

  </script>



</body>
</html>