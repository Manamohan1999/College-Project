<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connector.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><head><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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
</head>
<body>

<form method="post" action="">

 <%
try{
 Statement st=con.createStatement();
 String regdno=request.getParameter("regdno");
 String query="select *  from studenttab where regdno='"+regdno+"'";
 ResultSet  rs=st.executeQuery(query);
 
 while(rs.next()){

 %>
         <input type="hidden" id="orangeForm-regdno" class="form-control validate pt-2" name="regdno" value="<%=rs.getString("regdno") %>" />
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
          <i class="fas fa-lock prefix grey-text"></i>

          <input type="text" id="orangeForm-regdno" class="form-control validate pt-2" name="regdno" value="<%=rs.getString("regdno") %>" disabled />
          <label data-error="wrong" data-success="right" for="orangeForm-regdno">Your regdNo</label>
               
        </div>
        
           
        <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="orangeForm-name" class="form-control validate pt-2" name="name" value="<%=rs.getString("name") %>" />
          <label data-error="wrong" data-success="right" for="orangeForm-name" >Your name</label>
             
        </div>
        
        
        <div class="md-form mb-5">
          <i class="fas fa-envelope prefix grey-text"></i>

          <input type="text" id="orangeForm-branch" class="form-control validate pt-2" name="branch" value="<%=rs.getString("branch") %>" disabled/>
          <label data-error="wrong" data-success="right" for="orangeForm-branch">Your Branch</label>
        </div>

          <div class="md-form mb-4">
          <i class="fas fa-address-book prefix grey-text"></i>
          <input type="text" id="orangeForm-address" class="form-control validate pt-2" name="address" value="<%=rs.getString("address") %>"/>
          <label data-error="wrong" data-success="right" for="orangeForm-address">Your Address</label>
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



 
  <!-- Bootstrap core JavaScript -->
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/js/mdb.min.js" integrity="sha256-RyKFOSKnuKFSYAyJlfeHdb8ljBAbLJOSh9Bz8pzhhkY=" crossorigin="anonymous"></script>
 

</body>
</html>



<%


String rgdno=request.getParameter("regdno");
String name=request.getParameter("name");
String contact=request.getParameter("cntct");
String address=request.getParameter("address");

if( name!=null && contact!=null && address!=null){
	
String query="update studenttab set name=?, contact=?, address=? where regdno='"+rgdno+"'";
	PreparedStatement ps=con.prepareStatement(query);

	ps.setString(1,name);
	ps.setString(2,contact);
	ps.setString(3,address);

	int i=ps.executeUpdate();
	if(i>0){
		
	response.sendRedirect("admindashboard.jsp");

	}
	
	
	
	
	
}




%>


