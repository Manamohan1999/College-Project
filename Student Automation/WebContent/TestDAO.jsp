<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@include file="connector.jsp"%>
<html>
<body>
	<%
String email=request.getParameter("email");
String newpsw=request.getParameter("newpsw");
String cnfpsw=request.getParameter("cnfpsw");

if(newpsw.equals(cnfpsw)){

	try{
		
	
		Statement st=con.createStatement();
		
		ResultSet rs=st.executeQuery("select * from demo  where email= \'" +email+ "\'");
		
		if(rs.next())
		{
		
		st.executeUpdate("update demo set password=\'" +newpsw+ "\' where email= \'" +email+ "\'");
		%>

	<h5>password changed successfully</h5>

	<%
		}else{
		%>
	<h5>Incorrect email</h5>

	<% 	
		}
	}catch(Exception e){
		
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

}else{
    %>
	<h5>Password must be same</h5>
	<% 
}

%>
</body>
</html>