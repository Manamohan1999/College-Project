<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<%@include file="connector.jsp"%>
<html>
<head>



</head>
<body>
<%
String email=request.getParameter("email");
String pass=request.getParameter("pass");

try
{

  String query="select *  from admintab where email=? and Password=?";
  PreparedStatement    ps=con.prepareStatement(query);
  ps.setString(1, email);
  ps.setString(2, pass);
  
    ResultSet rs=ps.executeQuery();
	
if(!rs.next())
{
	
%>

<font color="red"><b>Hey!,Invalid email/password<br/></b></font>
..Try again..

 
</body>
</html>
<%
return;
}//if
else{
	
	%> 
	<h5>Login Successful</h5>
	
	<% 	
	String userId=rs.getString("id");
session.setAttribute("user",userId);
%>
<script type="text/javascript">
window.location.replace("admindashboard.jsp");
</script>
	
	
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


