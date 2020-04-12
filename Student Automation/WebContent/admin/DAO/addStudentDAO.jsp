<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="connector.jsp" %>
<html>
<body>
<%


String regdno=request.getParameter("regdno");
String name=request.getParameter("name");
String branch=request.getParameter("branch");
String contact=request.getParameter("cntct");
String district=request.getParameter("dsct");
String pass=request.getParameter("psw");
try
{
	int i=0;
	Statement st=con.createStatement();
	i=st.executeUpdate("insert into studenttab(RegdNo,Name,Branch,contact,Address,password)values('"+regdno+"','"+name+"','"+branch+"','"+contact+"','"+district+"','"+pass+"')");


if(i>0){
	%>
<h5 align="center"><b>Student added Successfully</b></h5>
<script>
         setTimeout(function(){
        	 window.location.replace("admindashboard.jsp");   },2000);
      </script>
	   <% 

	}else{
		%>

	<h6 align="center">There is a problem while adding your record</h6>
		

  
  
 
  <% 
	}
}//try
catch(Exception e){
	
	out.println(e.getMessage());
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

</body>
</html>
