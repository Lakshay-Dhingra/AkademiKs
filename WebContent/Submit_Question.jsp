<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.SubmitQuiz"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<%
String question=request.getParameter("question");
String a=request.getParameter("a");
String b=request.getParameter("b");
String c=request.getParameter("c");
String d=request.getParameter("d");
String ans=request.getParameter("ans");
int answer=0;
if(question==null||a==null||b==null||c==null||d==null||ans==null)
{%>
<script>alert("Please Fill up all fields of the form.");</script>
<script>location.href="Submit_Quiz.jsp";</script>
<%}
else if(question.equals("")||a.equals("")||b.equals("")||c.equals("")||d.equals("")||ans.equals(""))
{%>
<script>alert("Please Fill up all fields of the form.");</script>
<script>location.href="Submit_Quiz.jsp";</script>
<%
}
else{
try
{
	answer=Integer.parseInt(ans);
}
catch(Exception e)
{
}
int srno=SubmitQuiz.getMaxSrNo();
if(!SubmitQuiz.saveData(srno+1,question,a,b,c,d,answer))
{
%>
<script>alert("Some Error occured in database!");</script>
<%}
else
{%>
<script>alert("Question Successfully Submitted.");</script>	
<%
}
}
%>
<script>location.href="Quiz.jsp";</script>
</html>