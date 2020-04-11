<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="connector.jsp" %>
<html>
<body>
<%



String email=request.getParameter("email");
String newpass=request.getParameter("newpsw");

try
{
  
PreparedStatement ps=con.prepareStatement("Update demo set password=? where email='"+email+"'");
ps.setString(1,newpass);


int i=ps.executeUpdate();
if(i>0){
	%>
<h5 ><b>Password changed Successfully</b></h5>
	   
	   <% 

	}else{
		%>

	<h6>There is a problem while  changing  your  Password</h6>
		
 
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
