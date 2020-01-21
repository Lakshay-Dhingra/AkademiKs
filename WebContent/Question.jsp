<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.MathsQuiz"%>
<%@ page import="java.util.Random" %>
<%@ page import="db.StoreResult" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Question</title>
</head>
<body>
<%
//some condition to generate question when clicked next or start quiz
String start=request.getParameter("start");
  if(start==null)
  {%>
	  <script>history.back();</script>
 <%}
  else
  {
	  if(start.equals("Start Quiz"))
	  {
		  Random myrand = new Random();
		  session.setAttribute("rand",myrand);
		  session.setAttribute("score",0);
		  int mycount=0;
		  session.setAttribute("count",mycount);
		  int arr[]=new int[11];
		  session.setAttribute("qarray",arr);
	  }
	  else
	  {
		StoreResult.storeData((int)session.getAttribute("count"),(String)session.getAttribute("myq"),
		(String)session.getAttribute("mya"),(String)session.getAttribute("myb"),(String)session.getAttribute("myc"),
		(String)session.getAttribute("myd"),(int)session.getAttribute("usans"),(int)session.getAttribute("myans"));	
	  }
	  int mycount=(int)session.getAttribute("count");
	  if(mycount>=10)
	  {%>
		  <script>location.href="Quiz_Result.jsp";</script>
	  <%}
	  session.setAttribute("start",start);
	  session.setAttribute("count",mycount+1);
  }
int maxsrno= MathsQuiz.getMaxSrNo();
Random rand=(Random)session.getAttribute("rand");
int rand_int = rand.nextInt(maxsrno)+1;
int count=(int)session.getAttribute("count");
int arr[]=(int[])session.getAttribute("qarray");
int i=0;
if(maxsrno<10)
{
	%>
	<script>alert("Sorry, Not Enough Question Yet!");
	history.back();</script>
	<%}
while(i<count-1)
{
	if(arr[i]==rand_int)
	{
		rand_int=rand.nextInt(maxsrno)+1;
		i=-1;
	}
	i++;
}
arr[count-1]=rand_int;
if(!MathsQuiz.createQuestion(rand_int))
	{%>
		<script>
		alert("Questions Not Found!");
		location.href="Maths_Exam.jsp";
		</script>
<%  }
String question=MathsQuiz.question;
String a=MathsQuiz.a;
String b=MathsQuiz.b;
String c=MathsQuiz.c;
String d=MathsQuiz.d;
int ans=MathsQuiz.answer_index;
session.setAttribute("myq",question);
session.setAttribute("mya",a);
session.setAttribute("myb",b);
session.setAttribute("myc",c);
session.setAttribute("myd",d);
session.setAttribute("myans",ans);
%>
<script>
		location.href="Maths_Quiz.jsp";
</script>
</body>
</html>