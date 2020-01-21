<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.RegisterTable"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<%
//String univ=request.getParameter("univ");
String univ="DCRUST, Murthal";
String name=request.getParameter("name");
String roll=request.getParameter("roll");
String degree=request.getParameter("degree");
String email=request.getParameter("email");
String password=request.getParameter("password");
String cpassword=request.getParameter("confirmpassword");
String[] cb=request.getParameterValues("cb");


try
{
long rollno=Long.parseLong(roll);
}
catch(Exception e)
{%>
	<script> 
	alert("Roll No. can only contain Numeric Data.");
	location.href="Home.jsp";
	
	</script>
<%}

///////////////////////////////////////////// Checking Constraints ////////////////////////////////////////////

if(roll==""||email==""||name==""||password==""||cpassword==""||degree=="")
{%>
	<script> 
	alert("Please fill all the fields of the form.");
	location.href="Home.jsp";
	
	</script>
<%}
else if(password.length()<5||password.length()>20)
{%>
	<script> 
	alert("Password must be of 5 to 20 characters long.");
	location.href="Home.jsp";
	
	</script>
<%}
else if(!password.equals(cpassword))
{%>
	<script> 
	alert("Confirm Password Didn't match. Please Try again.");
	location.href="Home.jsp";
	</script>
<%}

else if(roll.length()>20||roll.length()<5)
{%>
<script> 
alert("Your University Roll No Must be 5 to 20 digits long.");
location.href="Home.jsp";
</script>
<%}

else if(name.length()>40)
{%>
<script> 
alert("Your Name can be of maximum 40 characters long.");
location.href="Home.jsp";
</script>
<%}

else if(name.length()>50)
{%>
<script> 
alert("Your email can be of maximum 50 characters long.");
location.href="Home.jsp";
</script>
<%}

else if(!name.matches("^[\\p{L} .'-]+$"))	//Regular Exp for Alphabets and Spaces
{%>
<script> 
alert("Your Name must not contain any digits or special characters.");
location.href="Home.jsp";
</script>
<%}

//checkbox

/////////////////////////////////////////// Adding Data To Database ///////////////////////////////////////////

else
{
	String x=RegisterTable.authenticate(univ,degree,name,roll,email,password);
	if(x.equals("true"))
	{
		session.setAttribute("user",email);
%>		
		<script> 
		alert("Registeration Successful.");
		location.href="Home.jsp";
		</script>
<%	}
	
	else if(x.equals("univroll"))
	{%>		
	<script> 
	alert("This University RollNo. has already been registered.");
	location.href="Home.jsp";
	</script>
<%	}
	
	else if(x.equals("email"))
	{%>		
	<script> 
	alert("This email has already been registered.");
	location.href="Home.jsp";
	</script>
<%	}
	
	else	//if some error
	{%>
	<script> 
	alert("Some Error Occured during Registeration! Please Try Again");
	location.href="Home.jsp";
	</script>
	<%}
}%>
</html>