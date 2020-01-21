<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.LoginTable"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<%
String person=request.getParameter("person");
String email=request.getParameter("email");
String password=request.getParameter("password");

if(email==""||password==""||email==null||password==null)
{%>
	<script> 
	alert("You havn't entered email or password.");
	location.href="Home.jsp";
	
	</script>
<%}

else if(password.length()<5||password.length()>20)
{%>
	<script> 
	alert("Password should be of 5 to 20 characters long.");
	location.href="Home.jsp";
	
	</script>
<%}

else
{
	String x=LoginTable.authenticate(person,email,password);
	if(x.equals("true"))
	{
		session.setAttribute("user",email);
%>		
		<script> 
		location.href="Home.jsp";
		</script>
<%
	}
	else if(x.equals("false"))
	{
%>		
		<script> 
		alert("Wrong email or password.");
		location.href="Home.jsp";
		</script>
<%
	}
	else
	{
		
%>
	<script> 
	alert("Some Error Occured In Database! Please Try Again");
	location.href="Home.jsp";
	
	</script>
<%
}}%>
</html>