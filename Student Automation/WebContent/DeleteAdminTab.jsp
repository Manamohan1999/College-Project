<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include file="connector.jsp" %>


<%
try{
String duId=request.getParameter("dU");
Statement st=con.createStatement();
st.executeUpdate("Delete from admintab where id='"+duId+"'");
response.sendRedirect("admindashboard.jsp");



}catch(Exception e){
		
}




%>

