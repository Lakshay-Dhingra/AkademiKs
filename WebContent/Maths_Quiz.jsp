<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%Object start=session.getAttribute("start");
	  if(start==null)
	  {%>
		  <script>history.back();</script>
	  <%}%>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	  <script>
      var flag=0;
      function myfunc(str)
      {
        if(flag==0)
        {
        var x=document.getElementById(str);
        x.style.backgroundColor="rgb(54,151,233)";
        x.style.color="rgb(235,235,235)";
        }
      }
      function myfunc2(str)
      {
        if(flag==0)
        {
        var x=document.getElementById(str);
        x.style.backgroundColor="rgb(235,235,235)";
        x.style.color="rgb(54,151,233)";
        }
      }
      function myfunc3(str)
      {
        if(flag==0)
        {
        var x=document.getElementById(str);
        flag=1;
        var y=str.charCodeAt(0)-97;
        location.href=y+".jsp";
        }
      }
    </script>

    
    <title>Maths Quiz</title>
  </head>
  <body>
    <div style="margin-top: 75px">
      <center>
      <strong style="font-size: 44px">Maths Quiz</strong>
      <h5 style="color:grey">Test Your Mathematics</h5>
      </center>
    </div>

    <div class="container px-10 ">
      <div style="margin-top: 75px; ">
      	<div class="float-left"><h4>Question: <%=session.getAttribute("count") %>/10</h4></div>
        <div class="float-right"><h4>Time Left: <span id="countdown">30</span>s</h4></div>
      </div>
      <br>
      <div style="padding: 20px 10px 15px 10px;" >
        <div id="Question">
          <center><h4 style="color:rgb(54,151,233);">
          <%=session.getAttribute("myq") %>   
          </h4></center>
        </div>
      </div>
	
      <div class="container my-3" style="color:rgb(54,151,233);" >
      <div class="row">
        <div class="col-6 pl-2 pr-1">
          <div class="px-3 pt-3 pb-3" id="a" onmouseover ="myfunc('a')" onmouseout="myfunc2('a')" onclick="myfunc3('a')" style="background-color: rgb(235,235,235);">
          <h5><%=session.getAttribute("mya")%></h5></div>
        </div>

        <div class="col-6 pl-2 pr-1">
          <div class="px-3 pt-3 pb-3" id="b" onmouseover ="myfunc('b')" onmouseout="myfunc2('b')" onclick="myfunc3('b')" style="background-color: rgb(235,235,235);">
          <h5><%=session.getAttribute("myb")%></h5></div>
        </div>
      </div>

      <div class="row my-3">
        <div class="col-6 pl-2 pr-1">
          <div class="px-3 pt-3 pb-3" id="c" onmouseover ="myfunc('c')" onmouseout="myfunc2('c')" onclick="myfunc3('c')" style="background-color: rgb(235,235,235);">
          <h5><%=session.getAttribute("myc")%></h5></div>
        </div>

        <div class="col-6 pl-2 pr-1">
          <div class="px-3 pt-3 pb-3" id="d" onmouseover ="myfunc('d')" onmouseout="myfunc2('d')" onclick="myfunc3('d')" style="background-color: rgb(235,235,235);">
          <h5><%=session.getAttribute("myd")%></h5></div>
        </div>
      </div>
  	  </div>
  
	<div class="container fixed-bottom py-2">
	  <footer class="blog-footer">
	    <!--div class="float-left m-2">
	      <button type="button" class="btn btn-Light"><h5><-Previous</h5></button>
	    </div-->
	    <div class="float-right m-2">
	    <form action="noans.jsp" method="post">
	   		<h5><input type="submit" class="btn btn-Light" name="start" id="start" value="Next->"></h5>
	   	</form>
	      <!-- button type="button" class="btn btn-Light"><h5>Next-></h5></button-->
	    </div>
	  </footer>
	</div>
	
	<script>
		var seconds = document.getElementById("countdown").textContent;
		var countdown = setInterval(function() {
		    seconds--;
		    document.getElementById("countdown").textContent = seconds;
		    if (seconds <= 0)
		    {
		    	clearInterval(countdown);
		    	location.href="noans.jsp";
		    }
		}, 1000);
	</script>
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>