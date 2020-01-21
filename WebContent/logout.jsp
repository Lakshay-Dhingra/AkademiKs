<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<%if(session!=null)
{
session.removeAttribute("user");
session.invalidate();
}%>
<script> 
	location.href="Home.jsp";
</script>

</html>