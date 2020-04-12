<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@include file="/connector.jsp"%>
<html>
<body>
	<%
String email=request.getParameter("email");
String newpsw=request.getParameter("newpsw");
String cnfpsw=request.getParameter("cnfpsw");

if(newpsw.equals(cnfpsw)){

	try{
		
	
		Statement st=con.createStatement();
		
		ResultSet rs=st.executeQuery("select * from admintab  where email= \'" +email+ "\'");
		
		if(rs.next())
		{
		
		st.executeUpdate("update admintab set password=\'" +newpsw+ "\' where email= \'" +email+ "\'");
		%>

	<h5 align="center">password changed successfully</h5>
		   <script type="text/javascript">
window.location.replace("admindashboard.jsp");
</script>

	<%
		}else{
		%>
	<h5 align="center">Incorrect email</h5>

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
	<h5 align="center">Password must be same</h5>
	<% 
}

%>
</body>
</html>