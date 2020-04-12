<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include file="../../connector.jsp" %>


<%
try{
String UseRegdno=request.getParameter("usrregdno");
Statement st=con.createStatement();
st.executeUpdate("Delete from studenttab where regdno='"+UseRegdno+"'");
response.sendRedirect("admindashboard.jsp");



}catch(Exception e){
		
}




%>

