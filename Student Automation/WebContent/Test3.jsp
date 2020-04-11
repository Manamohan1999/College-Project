<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connector.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
 <link rel="icon" href="images/favicon.ico">
<title>KMBB: Student Automation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/css?family=Bitter&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />
  <link rel="stylesheet" href="css/style.css">
  <!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha256-NuCn4IvuZXdBaFKJOAcsU2Q3ZpwbdFisd5dux4jkQ5w=" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">


</head>
<body>

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


        </div>

      </div>
      <!-- Heading -->






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


<table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
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



    </div>
  </main>
  <!--Main layout-->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/js/mdb.min.js" integrity="sha256-RyKFOSKnuKFSYAyJlfeHdb8ljBAbLJOSh9Bz8pzhhkY=" crossorigin="anonymous"></script>
 


  <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
  
  <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

<script type="text/javascript">

$(document).ready(function () {
	$('#dtBasicExample').DataTable();
	$('.dataTables_length').addClass('bs-select');
	});
</script>



 


</body>
</html>