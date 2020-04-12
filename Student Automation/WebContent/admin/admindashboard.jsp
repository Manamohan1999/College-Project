
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="connector.jsp"%>

<%
    if(session.getAttribute("user")==null){
    	session.removeAttribute("user");
         session.invalidate();
    response.sendRedirect("adminlogin.html");
        
    }

%>




<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1  shrink-to-fit=no" >
<meta charset="ISO-8859-1" content="text/html">
 <link rel="icon" href="images/favicon.ico">
<title>KMBB: Student Automation</title>

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
<!--DataTales  -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
</head>

<body class="grey lighten-3">
<div class="d-flex " id="wrapper">

    <!-- Sidebar -->
    <div class="aqua-gradient color-block" id="sidebar-wrapper">
      <div class="sidebar-heading">
       <a class="logo-wrapper waves-effect">
        <img src="images/logo22.png" alt="logo" class="img-fluid "  width="150px;" height="150px;"> <p class="text-center font-weight-bold animated tada infinite">Admin Panel</p>
      </a> 
  </div>
      <div class="list-group list-group-flush ">
         
               <a href="#admintab" class="list-group-item list-group-item-action waves-effect" >
          <i class="fas fa-address-card mr-3"></i>Manage Admin</a><div></div>


        <a href="#" class="list-group-item list-group-item-action waves-effect" data-toggle="modal" data-target="#orangeModal">
          <i class="fas fa-table mr-3"></i>Edit Profile</a> <div></div>


        <a href="#gmap" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-map mr-3"></i>Maps</a><div></div>
       
   <a href="#collapseExamplesidebar" class="list-group-item list-group-item-action waves-effect" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExamplesidebar">
   <i class="fas fa-user-graduate mr-3"></i>Student <i class="fas fa-angle-down rotate-icon ml-4" ></i></a>
  <div class="collapse" id="collapseExamplesidebar">
      <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Add Student</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Edit Student</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>View Marks</a>
   </div>


   <a href="#collapseExamplesidebar1" class="list-group-item list-group-item-action waves-effect" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExamplesidebar1">
   <i class="fas fa-user mr-3"></i>Staff <i class="fas fa-angle-down rotate-icon ml-5"></i></a>
  <div class="collapse" id="collapseExamplesidebar1">
      <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Add Student</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>Edit Staff</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-user mr-3"></i>View Staff</a>
   </div>


      </div>
    </div>
    <!-- /#sidebar-wrapper -->




    <!-- Page Content -->
    <div id="page-content-wrapper">

                <!-- ***********navbar starts here************************* -->
      <nav class="navbar  navbar-expand-lg navbar-light  white scrolling-navbar aqua-gradient color-block">
       <!--  <button class="btn btn-primary" id="menu-toggle"><i  class="fas fa-bars"></i></button> -->
  

<!-- SideNav slide-out button -->
        <div class="float-left">
        <a href="#" data-activates="slide-out" class="button-collapse black-text" id="menu-toggle"><i class="fas fa-bars"></i></a> 
        </div>
        <!-- Breadcrumb-->
        <div class="breadcrumb-dn ml-2 pt-3">
          <p class="font-weight-bold">KMBB: Admin</p>
        </div>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- navbar social icons -->
    <ul class="navbar-nav ml-auto nav-flex-icons">
  
     <li class="nav-item">
        <a class="nav-link waves-effect waves-light" href="#" >
          <i class="fas fa-bell pt-2 fa-lg "></i><span class="badge badge-pill badge-danger animated heartBeat infinite">1</span>
        </a>
      </li>

    
      <li class="nav-item">
        <a class="nav-link waves-effect waves-light" href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin" target="_blank">
          <i class="fas fa-envelope pt-2 fa-lg"></i>
        </a>
      </li>
      <li class="nav-item avatar dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">
          <img src="images/logo22.png" height="35" width="35" class="rounded-circle z-depth-0"
            alt="avatar image">
        </a>
        <div class="dropdown-menu dropdown-menu-lg-right dropdown-secondary aqua-gradient color-block"
          aria-labelledby="navbarDropdownMenuLink-55">
               <a class="dropdown-item " href="#" data-toggle="modal" data-target="#modalChangePasswordForm">Change Password</a>
          <a class="dropdown-item" href="#"  data-toggle="modal" data-target=  "#frameModalTop">Logout</a>
                 </div>
      </li>
    </ul>
           

        </div>
      </nav>
<!--************************** navbars ends here ****************************-->





<!--  @@@@@@@@@@@@@ Add Admin form(modalRegisterForm) @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<form action="addAdminDAO.jsp" method="post" id="addAdminform">

<div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center aqua-gradient">
        <p class="modal-title w-100 font-weight-bold text-white ">Please fill the form with correct details.</p>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3 ">
           <div class="md-form mb-5">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="text" id="id" class="form-control validate" name="id">
          <label data-error="wrong" data-success="right" for="orangeForm-id">Your Id</label>
        </div>
        
        <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="name" class="form-control validate" name="name">
          <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
        </div>
        <div class="md-form mb-5">
          <i class="fas fa-envelope prefix grey-text"></i>
          <input type="email" id="email" class="form-control validate" name="email">
          <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
        </div>
        
                <div class="md-form mb-5">
          <i class="fas fa-mobile prefix grey-text"></i>
          <input type="text" id="contact" class="form-control validate" name="cntct">
          <label data-error="wrong" data-success="right" for="orangeForm-name">Your contact</label>
        </div>

      <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="position" class="form-control validate" name="position">
          <label data-error="wrong" data-success="right" for="orangeForm-name">Your position</label>
        </div>

        <div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" id="pass" class="form-control validate" name="psw">
          <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
        </div>

      </div>
      <span id="addmsg"></span>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-deep-orange" id="addAdmin">Add Admin</button>
      </div>
    </div>
  </div>
</div>
</form>
<!-- ////////////////////// @@@@@@@@@@@@@ Add Admin form ends here@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->





<!--  ^^^^^^^^^^^^^^^^^^^^^Add Student form(modalStudentRegisterForm)^^^^^^^^^^^^^^^^^^^^ -->
<form action="addStudentDAO.jsp" method="post" id="addStudentform">

<div class="modal fade" id="modalStudentRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center aqua-gradient">
        <p class="modal-title w-100 font-weight-bold text-white ">Please fill the form with correct details.</p>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3 ">
           <div class="md-form mb-5">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="text" id="regdno" class="form-control validate" name="regdno">
          <label data-error="wrong" data-success="right" for="orangeForm-regdno">Your RegdNo</label>
        </div>
        
        <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="name" class="form-control validate" name="name">
          <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
        </div>
         <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="branch" class="form-control validate" name="branch">
          <label data-error="wrong" data-success="right" for="orangeForm-branch">Your Branch</label>
        </div>
        
                <div class="md-form mb-5">
          <i class="fas fa-mobile prefix grey-text"></i>
          <input type="text" id="contact" class="form-control validate" name="cntct">
          <label data-error="wrong" data-success="right" for="orangeForm-name">Your contact</label>
        </div>

      <div class="md-form mb-5">
          <i class="fas fa-address-book prefix grey-text"></i>
          <input type="text" id="dsct" class="form-control validate" name="dsct">
          <label data-error="wrong" data-success="right" for="orangeForm-dsct">Your District</label>
        </div>

        <div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" id="pass" class="form-control validate" name="psw">
          <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
        </div>

      </div>
      <span id="addingStudentmsg"></span>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-deep-orange" id="addStudent">Register Student</button>
      </div>
    </div>
  </div>
</div>
</form>
<!-- ////////////////////// @@@@@@@@@@@@@ Add Student form ends here@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
















<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@ password change form starts here  -->
<form action="admnchngpswDAO.jsp" method="post" id="changepswform">

<% 
try{
	 Statement st=con.createStatement();
	 String id=session.getAttribute("user").toString();
	 String query="select *  from admintab where id='"+id+"'";
	 ResultSet   rs=st.executeQuery(query);
	 
	 while(rs.next()){

	 %>
<div class="modal fade" id="modalChangePasswordForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog " role="document">
    <div class="modal-content">
      <div class="modal-header text-center aqua-gradient">
        <p class="modal-title w-100 font-weight-bold text-white ">Please fill the form with correct details.</p>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3 ">
        

        <div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="email" id="orangeForm-email" class="form-control validate" name="email" value="<%=rs.getString("email") %>"/>
          <label data-error="wrong" data-success="right" for="orangeForm-pass">Your email</label>
        </div>
        
        
        <div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" id="orangeForm-pass" class="form-control validate" name="newpsw">
          <label data-error="wrong" data-success="right" for="orangeForm-pass">Create new password</label>
        </div>

<div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" id="orangeForm-pass" class="form-control validate" name="cnfpsw">
          <label data-error="wrong" data-success="right" for="orangeForm-pass">Confirm  password</label>
        </div>
      </div>
            <span id="chngmsg"></span>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-deep-orange" id="change">Change Password</button>
      </div>
    </div>
  </div>
</div>
            
<%
 }
 }//try

catch(Exception e){
	
	e.printStackTrace();
}
finally
{
try
{

}
catch(Exception e)
{

}
}//finally
%>
     

</form>
<!--  ****************************ends here**********************************-->


<!-- Frame Modal Bottom -->
<div class="modal fade bottom" id="frameModalTop" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">

  <!-- Add class .modal-frame and then add class .modal-bottom (or other classes from list above) to set a position to the modal -->
  <div class="modal-dialog modal-frame modal-top" role="document">


    <div class="modal-content">
      <div class="modal-body">
        <div class="row d-flex justify-content-center align-items-center">

          <p class="pt-3 pr-2 font-weight-bold text-danger ml-auto">Are you sure to logout?
          </p>
         
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         <a href="adminlogoutDAO.jsp" ><button type="button" class="btn btn-primary">Logout</button></a>
       
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Frame Modal Bottom -->















  <!--Main layout-->
  <main class="pt-5 mx-lg-5">
    <div class="container-fluid mt-5">

      <!-- Heading -->
      <div class="card mb-4 wow fadeIn">

        <!--Card content-->
        <div class="card-body d-sm-flex justify-content-between">

          <h4 class="mb-2 mb-sm-0 pt-1">
            <a href="" target="_blank">Home Page</a>
            <span>/</span>
            <span>Dashboard</span>
          </h4>

<% 
try{
	 Statement st=con.createStatement();
	 String usrid=session.getAttribute("user").toString();
	 String query="select *  from admintab where id='"+usrid+"'";
	 ResultSet   rs=st.executeQuery(query);
	 
	 while(rs.next()){

	 %>
	 
	 <h5 class="font-weight-bold text-success"><%=rs.getString("name") %></h5>

          
<%
 }
 }//try

catch(Exception e){
	

}

%>
     



        </div>

      </div>
      <!-- Heading -->


  <!--Grid 1strow-->
      <div class="row wow fadeIn" id="admintab">
 
 <!-- table here -->
 
 
        <!--Grid column-->
        <div class="col-md-12 mb-4">

          <!--Card-->
          <div class="card  color-block" >

            <!-- Card header -->
            <h3 class="card-header text-center font-weight-bold text-uppercase py-4">Admin Details</h3>
  <div class="card-body">
    <div id="table" class="table-editable">
      <span class="table-add float-right mb-1 mr-2" ><a href="#" class="text-success" data-toggle="modal" data-target="#modalRegisterForm"><i
            class="fas fa-plus fa-2x" aria-hidden="true"></i></a></span>

      <table  id="adminTable"  class="table table-bordered table-responsive-md table-striped text-center" cellspacing="0" width="100%">
        <thead>
          <tr>
          <th class="text-center">ID</th>
            <th class="text-center">Admin Name</th>
            <th class="text-center">Email</th>
            <th class="text-center">Contact</th>
            <th class="text-center">Position</th>
            <th class="text-center">Edit</th>
            <th class="text-center">Remove</th>
          </tr>
        </thead>
        <tbody>
        
      <%
	try{	
	
		Statement  st=con.createStatement();
		String sql ="SELECT * FROM admintab order by id";

		ResultSet rs = st.executeQuery(sql);
		while(rs.next()){
	%>
        
        
        
          <tr>
          <td class="pt-3-half" contenteditable="true"><%=rs.getString("Id") %> </td>
            <td class="pt-3-half" contenteditable="true"><%=rs.getString("name") %> </td>
            <td class="pt-3-half" contenteditable="true"> <%=rs.getString("email") %> </td>
            <td class="pt-3-half" contenteditable="true"><%=rs.getString("contact") %></td>
            <td class="pt-3-half" contenteditable="true"><%=rs.getString("position") %></td>

           
            <td>
              <span class="table-edit"><a href="EditAdminTab.jsp?user=<%=rs.getString("id") %>"
                  class="btn btn-teal btn-rounded btn-sm my-0" id="editbtn" >Edit</a></span>
            </td>
            
            <td>
              <span class="table-remove"><button type="button" onclick="window.location.href = 'DeleteAdminTab.jsp?dU=<%=rs.getString("id") %>';"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
		<%		
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
       
         
        </tbody>
        <tfoot>
    <tr>
          <th class="text-center">ID</th>
            <th class="text-center">Admin Name</th>
            <th class="text-center">Email</th>
            <th class="text-center">Contact</th>
            <th class="text-center">Position</th>
            <th class="text-center">Edit</th>
            <th class="text-center">Remove</th>
    </tr>
  </tfoot>
      </table>

    </div>
  </div>

          </div>
          <!--/.Card-->

        </div>
        <!--Grid column
 
      </div>
      <!--Grid 1strow-->




  <!--Grid 2ndrow-->
      <div class="row wow fadeIn">
 
 
 <!-- table here -->
 
 
        <!--Grid column-->
        <div class="col-md-12 mb-4">

          <!--Card-->
          <div class="card  color-block" >

            <!-- Card header -->
            <h3 class="card-header text-center font-weight-bold text-uppercase py-4">Student Details</h3>
  <div class="card-body">
    <div id="table" class="table-editable">
      <span class="table-add float-right mb-1 mr-2" ><a href="#" class="text-success" data-toggle="modal" data-target="#modalStudentRegisterForm"><i
            class="fas fa-plus fa-2x" aria-hidden="true"></i></a></span>


<table id="studentTable" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
 <thead>
          <tr>
            <th class="text-center">RegdNo</th>
            <th class="text-center"> Name</th>
            <th class="text-center">Branch</th>
            <th class="text-center">District</th>
            <th class="text-center">Contact</th>
            
            <th class="text-center">Edit</th>
            <th class="text-center">Remove</th>
          </tr>
        </thead>
        <tbody>
        
      <%
	try{	
	
		Statement  st=con.createStatement();
		String sql ="SELECT * FROM studenttab order by regdno";

		ResultSet rs = st.executeQuery(sql);
		while(rs.next()){
	%>
        
        
        
          <tr>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("regdno") %> </td>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("NAME") %> </td>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("BRANCH") %></td>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("ADDRESS") %></td>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("CONTACT") %></td>

           

            <td class="pt-3-half text-center">
              <span class="table-edit"><button type="button" onclick="window.location.href = 'EditStudentTab.jsp?regdno=<%=rs.getString("regdno") %>';"
                  class="btn btn-teal btn-rounded btn-sm my-0" id="editbtn" >Edit</button></span>
            </td>
            
            <td class="pt-3-half text-center">
              <span class="table-remove"><button type="button"   onclick="window.location.href = 'DeleteStudentTab.jsp?usrregdno=<%=rs.getString("regdno") %>';"                                                                         
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
		<%		
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
       
         
        </tbody>
  <tfoot>
    <tr>
     <th class="text-center">RegdNo</th>
            <th class="text-center"> Name</th>
            <th class="text-center">Branch</th>
            <th class="text-center">District</th>
            <th class="text-center">Contact</th>
             <th class="text-center">Edit</th>
            <th class="text-center">Remove</th>
    </tr>
  </tfoot>
</table>
    </div>
  </div>

          </div>
          <!--/.Card-->

        </div>
        <!--Grid column
 
      </div>
      <!--Grid 2ndrow-->





<!--Grid 3rdrow-->
      <div class="row wow fadeIn">
 
 
 <!-- table here -->
 
 
        <!--Grid column-->
        <div class="col-md-12 mb-4">

          <!--Card-->
          <div class="card  color-block" >

            <!-- Card header -->
            <h3 class="card-header text-center font-weight-bold text-uppercase py-4">Staff Details</h3>
  <div class="card-body">
    <div id="table" class="table-editable">

  <span class="table-add float-right mb-1" ><a href="#" class="text-success" data-toggle="modal" data-target="#modalStudentRegisterForm"><i
            class="fas fa-plus fa-2x" aria-hidden="true"></i></a></span>


<table id="staffTable" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
 <thead>
          <tr>
            <th class="text-center">RegdNo</th>
            <th class="text-center"> Name</th>
            <th class="text-center">Branch</th>
            <th class="text-center">District</th>
            <th class="text-center">Contact</th>
            
            <th class="text-center">Edit</th>
            <th class="text-center">Remove</th>
          </tr>
        </thead>
        <tbody>
        
      <%
	try{	
	
		Statement  st=con.createStatement();
		String sql ="SELECT * FROM studenttab order by regdno";

		ResultSet rs = st.executeQuery(sql);
		while(rs.next()){
	%>
        
        
        
          <tr>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("regdno") %> </td>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("NAME") %> </td>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("BRANCH") %></td>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("ADDRESS") %></td>
            <td class="pt-3-half text-center" contenteditable="true"><%=rs.getString("CONTACT") %></td>

           

            <td class="pt-3-half text-center">
              <span class="table-edit"><button type="button" onclick="window.location.href = 'EditStudentTab.jsp?regdno=<%=rs.getString("regdno") %>';"
                  class="btn btn-teal btn-rounded btn-sm my-0" id="editbtn" >Edit</button></span>
            </td>
            
            <td class="pt-3-half text-center">
              <span class="table-remove"><button type="button"   onclick="window.location.href = 'DeleteStudentTab.jsp?usrregdno=<%=rs.getString("regdno") %>';"                                                                         
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
		<%		
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
       
         
        </tbody>
  <tfoot>
    <tr>
     <th class="text-center">RegdNo</th>
            <th class="text-center"> Name</th>
            <th class="text-center">Branch</th>
            <th class="text-center">District</th>
            <th class="text-center">Contact</th>
             <th class="text-center">Edit</th>
            <th class="text-center">Remove</th>
    </tr>
  </tfoot>
</table>
 </div>
  </div>

          </div>
          <!--/.Card-->

        </div>
        <!--Grid column
 
      </div>
      <!--Grid row-->

























      <!--Grid row-->
      <div class="row wow fadeIn">

        <!--Grid column-->
        <div class="col-lg-6 col-md-6 mb-4">

          <!--Card-->
          <div class="card">

            <!-- Card header -->
            <div class="card-header">Line chart</div>

            <!--Card content-->
            <div class="card-body">

              <canvas id="lineChart"></canvas>

            </div>

          </div>
          <!--/.Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-6 col-md-6 mb-4">

          <!--Card-->
          <div class="card">

            <!-- Card header -->
            <div class="card-header">Radar Chart</div>

            <!--Card content-->
            <div class="card-body">

              <canvas id="radarChart"></canvas>

            </div>

          </div>
          <!--/.Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-6 col-md-6 mb-4">

          <!--Card-->
          <div class="card">

            <!-- Card header -->
            <div class="card-header">Doughnut Chart</div>

            <!--Card content-->
            <div class="card-body">

              <canvas id="doughnutChart"></canvas>

            </div>

          </div>
          <!--/.Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-6 col-md-6 mb-4">

          <!--Card-->
          <div class="card">

            <!-- Card header -->
            <div class="card-header">Horizontal Bar Chart</div>

            <!--Card content-->
            <div class="card-body">

              <canvas id="horizontalBar"></canvas>

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
      
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->
  
<!-- *******footer part  starts here ********-->

<footer class="page-footer font-small primary-color-dark darken-2 " id="about">

 <!-- Copyright -->
  <div class="footer-copyright text-center text-black-50 py-3">&copy; 2020 Copyright:
    <a class="dark-grey-text" href="http://kmbb.in/"> <b>KMBB Engineering College. All Rights Reserved.</b></a>
    <p style="color: red;"><b>Disclaimer:</b>The portal is developed and hosted by  <b>Group-7(CSE) .</b> </p>
  </div>
  <!-- Copyright -->

</footer>

<!-- *******footer part  ends here ********-->


<!--The following code will work when it is toggled by edit profile button**************************  -->

 <form action="adminUpdateDAO.jsp" method="post" id="updateform">
 
 <%
try{
 Statement st=con.createStatement();
 String id=session.getAttribute("user").toString();
 String query="select *  from admintab where id='"+id+"'";
 ResultSet   rs=st.executeQuery(query);
 
 while(rs.next()){

 %>

           <input type="hidden" id="id" class="form-control validate" name="id"  value="<%=rs.getString("id") %>"/>
           <div class="modal fade pt-4" id="orangeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
 
      <div class="modal-header text-center aqua-gradient">
        <p class="modal-title w-100 font-weight-bold ">Update the form with correct details.</p>
       <!--  <h4 class="modal-title w-100 font-weight-bold ">Update</h4> -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3 ">
        <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="orangeForm-name" class="form-control validate pt-2" name="name" value="<%=rs.getString("name") %>"/>
          <label data-error="wrong" data-success="right" for="orangeForm-name" >Your name</label>
             
        </div>
        <div class="md-form mb-5">
          <i class="fas fa-envelope prefix grey-text"></i>

          <input type="email" id="orangeForm-email" class="form-control validate pt-2" name="email" value="<%=rs.getString("email") %>"/>
          <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
        </div>


  <div class="md-form mb-4">
          <i class="fas fa-mobile prefix grey-text"></i>
          <input type="text" id="orangeForm-contact" class="form-control validate pt-2" name="cntct" value="<%=rs.getString("contact") %>"/>
          <label data-error="wrong" data-success="right" for="orangeForm-contact">Your contact</label>
        </div>
      </div>
           <span id="updtmsg"></span>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-deep-orange" id="update">Update</button>
      </div>
    
    </div>
  </div>
<%
 }
 }//try

catch(Exception e){
	
	e.printStackTrace();
}
finally
{
try
{
con.close();
}
catch(Exception e)
{

}
}//finally
%>

</form>
	<!--///////////////The above code will work when it is toggled by edit profile button**************************  -->





 <!-- ***************************** ajax script starts here for all form***********************-->


  <!--Google Maps-->
  <script src="https://maps.google.com/maps/api/js"></script>

  <!-- Bootstrap core JavaScript -->
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

 
<script type="text/javascript">

$('button#update').click(function(){

		 $.post($('#updateform').attr("action"),$("#updateform input").serializeArray(),function(result){
			 $('#updtmsg').html(result);
			 
		 });
		
	
	$('#updateform').submit(function(){
		
		return false;
	});
	
	
});

</script>
 
 <script type="text/javascript">
 

 $('button#change').click(function(){

 		 $.post($('#changepswform').attr("action"),$("#changepswform input").serializeArray(),function(result){
 			 $('#chngmsg').html(result);
 			 
 		 });
 		
 	
 	$('#changepswform').submit(function(){
 		
 		return false;
 	});
 	
 	
 });
 </script>
 
  <script type="text/javascript">
 

 $('button#addAdmin').click(function(){

 		 $.post($('#addAdminform').attr("action"),$("#addAdminform input").serializeArray(),function(result){
 			 $('#addmsg').html(result);
 			 
 		 });
 		
 	
 	$('#addAdminform').submit(function(){
 		
 		return false;
 	});
 	
 	
 });
 </script>
 
 
   <script type="text/javascript">
 

 $('button#addStudent').click(function(){

 		 $.post($('#addStudentform').attr("action"),$("#addStudentform input").serializeArray(),function(result){
 			 $('#addingStudentmsg').html(result);
 			 
 		 });
 		
 	
 	$('#addStudentform').submit(function(){
 		
 		return false;
 	});
 	
 	
 });
 </script>
 

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
  
  
  

  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/js/mdb.min.js" integrity="sha256-RyKFOSKnuKFSYAyJlfeHdb8ljBAbLJOSh9Bz8pzhhkY=" crossorigin="anonymous"></script>
  
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
  
  <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">

$(document).ready(function () {
	$('#staffTable').DataTable();
	$('#studentTable').DataTable();
	$('#adminTable').DataTable();
	$('.dataTables_length').addClass('bs-select');
	});
</script>
</body>
</html>