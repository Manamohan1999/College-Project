<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="connector.jsp" %>
<html>
<body>
<%


String uid=request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("cntct");
String position=request.getParameter("position");
String pass=request.getParameter("psw");
try
{
	int i=0;
	Statement st=con.createStatement();
	i=st.executeUpdate("insert into admintab(Id,Name,Email,contact,position,password)values('"+uid+"','"+name+"','"+email+"','"+contact+"','"+position+"','"+pass+"')");


if(i>0){
	%>
<h5 align="center"><b>Admin added Successfully</b></h5>
	   <script type="text/javascript">
window.location.replace("admindashboard.jsp");
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
