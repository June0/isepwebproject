<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page
	import="java.sql.*,java.util.*,isepwebproject.model.*,isepwebproject.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String u=(String)session.getAttribute("myName");
if(u==null){
	response.sendRedirect("/isepwebproject/login.jsp?err=1");
	return ;
}
%>
<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/isepwebproject/login.jsp?err=1");
	return ;
}else{
%>  
	<% String sn="";
	ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	
	<table>
		<tr>
		    <td>Id</td>
		    <td>studentID</td>
		    <td>StudentName</td>
			<td>School of offer</td>
			<td>Class</td>
			<td>Major</td>
			<td>State</td>
		    <td>Date</td>
			
			
		</tr>
			<%for(int i=0;i<aL1.size();i++){	  
		    ResultBean Rb=(ResultBean)aL1.get(i);
	   
	%>
		
		<tr>
		    <td><%=Rb.getId() %></td>
		    <td><%=Rb.getStudentId() %></td>
		    <td><%sn=Rb.getStudentName(); %><%=sn %></td>
		    <td><%=Rb.getSchool() %></td>
		    <td><%=Rb.getCl() %></td>
		    <td><%=Rb.getMajor() %></td>
		    <td><%=Rb.getState() %></td>
		    <td><%=Rb.getDate() %></td>
		    
		</tr>
		
	
		
	<% }%>
	</table><br>
	<a href="HandleFindServlet?flag=3&studentname=<%=sn %>">back to the last page</a>

	<%
	}%>	
		
</body>
</html>