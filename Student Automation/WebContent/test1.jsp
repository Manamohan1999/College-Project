<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

	<%
 
	
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
%>
	<h1 align="center">
		<font color='blue'><b></b><strong>Student MarkSheet</strong></font></b>
	</h1>
	<table align="center" cellpadding="5" cellspacing="3" border="2"
		bordercolor="red">
		
		<tr bgcolor="#A52A2A">

			<td><b>Subject1</b></td>
			<td><b>subject2</b></td>
			<td><b>subject3</b></td>
			<td><b>subject4</b></td>
			<td><b>subject5</b></td>
			<td><b>subject6</b></td>
				<td><b>Total</b></td>

		</tr>
		<%
	try{	
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","dhiru");
		st=con.createStatement();
		String sql ="SELECT * FROM Marksheet";

		rs = st.executeQuery(sql);
		while(rs.next()){
	%>
		<tr bgcolor="#DEB887">


			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
							<td><%=rs.getDouble(7) %></td>


		</tr>

		<%		
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
	</table>
</body>
</html>