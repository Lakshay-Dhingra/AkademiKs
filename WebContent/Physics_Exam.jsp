<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.MathsQuiz"%>
<%@ page import="java.util.Random" %>
<!doctype html>
<html lang="en">
	<head>
	  <!-- Required meta tags -->
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	  <!-- Bootstrap CSS -->
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	  <title>Physics Quiz</title>
	<%if(session.getAttribute("user")==null)
	{%>
	<script>
	alert("You Haven't Logged In Yet! Please Login To Take Quiz.");
	history.back();
	</script>
	<%	}%>
	</head>
	<body>
	
	<div class="container my-5 py-5">
	   <div class="jumbotron">
	   <h1>Physics Quiz</h1>
	   <p class="lead"><strong>Here is a simple Physics Quiz to test and enhance your knowledge and ability.</strong></p>
	   <hr class="my-4">
	   <h4>Instructions:</h4>
	   <p>1. The Quiz is a Multiple Choice Question Type Quiz where you are given 4 options.</p>
	   <p>2. There is only one correct answer out of 4 given options.</p>
	   <p>3. There are total 10 questions in the quiz.</p>
	   <p>4. For every question you are given 30 seconds to tell the correct answer.</p>
	   <br>
	   <form action="Question2.jsp" method="post">
	   <input type="submit" class="btn btn-primary" name="start" id="start" value="Start Quiz">
	   </form>
	   </div>
	</div>
	
	  <!-- Optional JavaScript -->
	  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>