<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="connector.jsp" %>
<html>
<body>
<%



String id=session.getAttribute("user").toString();
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("cntct");
try
{

PreparedStatement ps=con.prepareStatement("Update admintab set name=?,email=?,contact=? where id='"+id+"'");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,contact);

int i=ps.executeUpdate();
if(i>0){
	%>
<h5 align="center"><b>Record updated Successfully</b></h5>
	   
	   <% 

	}else{
		%>

	<h6 align="center">There is a problem while  updating your  Record</h6>
		

  
  
 
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
