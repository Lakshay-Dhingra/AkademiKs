<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <title>Home - AkademiKs</title>
</head>
<body>



<!-----------------------------------------Navbar---------------------------------------------------------->
	<div class="container">
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background-color: #e3f2fd;">
	    
	    <a class="navbar-brand" href="index.html"><h4><i>A</i>kademiKs</h4></a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    
	    <!--------------------------------------Nav 1---------------------------------------------------->
	    <ul class="navbar-nav mr-auto">
	      
	      <!--------------------------------------Home-------------------------------------------------------->
	
	        <li class="nav-item">
	          <a class="nav-link" href="Home.jsp">Home</a>
	        </li>

		  <!----------------------------------------Quiz------------------------------------------------------>
	
	        <li class="nav-item">
	          <a class="nav-link" href="Quiz.jsp">Quiz</a>
	        </li>
	        
	      <!------------------------------------Study Material------------------------------------------------>
	
	        <li class="nav-item">
	          <a class="nav-link" href="StudyMaterial.jsp">Study Material</a>
	        </li>
	        
	      <!------------------------------------My Classroom-------------------------------------------------->
	
	        <li class="nav-item">
	          <a class="nav-link" href="Classroom.jsp">My Classroom</a>
	        </li>
	        
	      <!---------------------------------------About------------------------------------------------------>
	
	        <li class="nav-item">
	          <a class="nav-link" href="About.jsp">About</a>
	        </li>
	     </ul>
	        
      <!----------------------------------------Nav 2---------------------------------------------------->
       	
       <div class="float-right" id="nav2">
       <ul class="navbar-nav mr-auto">
      		
	  <!----------------------------------------Login---------------------------------------------------->
        
        <li class="nav-item">
        <button type="button" class="btn btn-secondary mr-2 mb-1" data-toggle="modal" 
        data-target="#LoginModal">
        Login</button>
      <!--------------------------------------Login Modal------------------------------------------------>
          	
            <div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
              
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="LoginModalLabel">Login</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                
                <div class="modal-body">
                  <form action="login.jsp" method="post">
                    
					  <div class="form-group">
                      <label for="exampleInputPerson">Login As:</label>
                      <select class="form-control" id="exampleInputPerson" name="person">
					  	<option value="Student">Student</option>
					  	<option value="Teacher">Teacher</option>
					  </select>
                      </div>
                    
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email address</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                       placeholder="Enter email" name="email">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword1" aria-describedby="passwordHelp"
                      placeholder="Password" name="password">
                    </div>
                    
                  
                </div>

                <div class="modal-footer">
                  <button type="submit" class="btn btn-primary">Login</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                </div>
               	</form>
              </div>
            </div>
            </div>
     
      <!-------------------------------------Login Modal End---------------------------------------------> 
        </li>

      <!-----------------------------------------Register------------------------------------------------>
        
        <li class="nav-item">
          <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#RegisterModal">
          Register</button>
	
	 <!--------------------------------------Register Modal---------------------------------------------->
          <div class="modal fade" id="RegisterModal" tabindex="-1" role="dialog" aria-labelledby="RegisterModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="RegisterModalLabel">Register</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form action="register.jsp" method="post">
                    
                    <div class="form-group">
                      <label for="exampleInputUniv">University Name</label>
                      <input type="text" class="form-control" id="exampleInputUniv" aria-describedby="UnivHelp" 
                      placeholder="DCRUST, Murthal" name="univ" readonly>
                    </div>
                    
                  	  <div class="form-group">
                      <label for="exampleInputDegree">Degree</label>
                      <select class="form-control" id="exampleInputDegree" name="degree">
					  	<option value="B.Tech. Computer Science Engineering">B.Tech. Computer Science Engineering</option>
					  	<option value="B.Tech. Electronics and Communication Engineering">B.Tech. Electronics and Communication Engineering</option>
					  	<option value="B.Tech. Mechanical Engineering">B.Tech. Mechanical Engineering</option>
					  	<option value="B.Tech. Electrical Engineering">B.Tech. Electrical Engineering</option>
					  	<option value="B.Tech. Civil Engineering">B.Tech. Civil Engineering</option>
					  	<option value="B.Tech. Chemical Engineering">B.Tech. Chemical Engineering</option>
					  	<option value="B.Tech. Biotechnology Engineering">B.Tech. Biotechnology Engineering</option>
					  	<option value="B.Arch. Bachelor of Architecture">B.Arch. Bachelor of Architecture</option>
					  	<option value="B.Sc. Physics">B.Sc. Physics</option>
					  	<option value="B.Sc. Chemistry">B.Sc. Chemistry</option>
					  	<option value="B.Sc. Mathematics">B.Sc. Mathematics</option>
					  </select>
                      </div>
                    
                    <div class="form-group">
                      <label for="exampleInputName">User Name</label>
                      <input type="text" class="form-control" id="exampleInputName" aria-describedby="NameHelp" 
                      placeholder="Enter Your Name" name="name">
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputRoll">University Roll No</label>
                      <input type="text" class="form-control" id="exampleInputRoll" aria-describedby="RollHelp" 
                      placeholder="Enter Roll No" name="roll">
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email address</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" 
                      placeholder="Enter email" name="email">
                      
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword1" aria-describedby="passwordHelp" 
                      placeholder="Password" name="password">
                      <small id="passwordHelp" class="form-text text-muted">Password must be 5 to 20 characters long.</small>
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputPassword1">Confirm Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword1" 
                      placeholder="Confirm Password" name="confirmpassword">
                    </div>
                    
                    <!--div class="form-group form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1" name="cb" value="ok">
                      <label class="form-check-label" for="exampleCheck1">I've read the <a href="pp.jsp">Privacy Policy</a>
                       and <a href="tu.jsp">Terms of use.</a></label>
                    </div-->
                    
                 
                </div>

                <div class="modal-footer">
                  <button type="submit" class="btn btn-primary">Register</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                </div>
                 </form>
              </div>
            </div>
          </div>
        </li>
      </ul>
      </div> 
      <!----------------------------------------End of Nav2----------------------------------------------->  
      
      <!-------------------------------------------Nav3--------------------------------------------------->  
	  <div class="float-right" id="nav3">
	  <ul class="navbar-nav mr-auto">
		<li class="nav-item">
	      <form action="Dashboard.jsp" method="post">
	      <button type="submit" value="logout" class="btn btn-secondary mr-2 mb-1" style="font-family: serif;">
	      <%=session.getAttribute("user")%></button>
	      </form>     
        </li>
        
		<!-- li class="nav-item">
		<form action="Dashboard.jsp" method="get">
	      <button type="submit" value="L" class="btn btn-info mr-3 mb-1" data-toggle="tooltip" data-placement="bottom"
	      title="xyz" style="font-family: serif; border-radius:50%; font-size:18px;">
	      <strong>L</strong></button>
		</form> 
		</li-->
		
		<li class="nav-item">
	      <form action="logout.jsp" method="post">
	      <button type="submit" value="logout" class="btn btn-outline-danger mr-2 mb-1" style="font-family: serif;">
	      Logout</button>
	      </form>     
        </li>
      </ul>
      </div>      
      <!----------------------------------------End of Nav3----------------------------------------------->
      
	  </div>
	  </nav>
	</div>
<!----------------------------------------Navbar End------------------------------------------------------->

<!-----------------------------------------Crousel -------------------------------------------------------->
  <div class="container my-3">
    
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <a href="Quiz.jsp">
        <img src="img/image1.jpg" class="d-block w-100" alt="Take A Quiz" height="500px" width="200px">
        </a>
      </div>
      <div class="carousel-item">
      	<a href="StudyMaterial.jsp">
        <img src="img/image2.jpg" class="d-block w-100" alt="Notes And Study Material" height="500px" width="200px">
        </a>
      </div>
      <div class="carousel-item">
      	<a href="Classroom.jsp">
        <img src="img/image3.jpg" class="d-block w-100" alt="My Classroom" height="500px" width="200px">
        </a>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    </div>
</div>
<!---------------------------------------Crousel End------------------------------------------------------->

<!---------------------------------------- Cards------------------------------------------------------->
<div class="container my-3">
<div class="row pt-3">
    <div class="card col-sm" style="border-style: none;">
      <a href="Quiz.jsp" style="text-decoration:none">
      <img src="img/imagecard1.webp" class="card-img-top" height="250px" style="border-style:solid;border-color:black;"></a>
      <div class="card-body">
        <h5 class="card-title">Take A Quiz</h5>
        <p class="card-text">Participate in Cool Quizzes to test and sharpen your skills and concepts.</p>
        <a href="Quiz.jsp" class="btn btn-primary">Go to Quiz Section</a>
      </div>
    </div>

    <div class="card col-sm" style="border-style: none;">
      <a href="StudyMaterial.jsp" style="text-decoration:none">
      <img src="img/imagecard2.jpg" class="card-img-top" height="250px" style="border-style:solid;border-color:black;"></a>
      <div class="card-body">
        <h5 class="card-title">Notes and Study Material</h5>
        <p class="card-text">Share Notes, Study Material,e-books and Tutorials with you peers.</p>
        <a href="#" class="btn btn-primary">Go To Notes Section</a>
      </div>
    </div>
    
    <div class="card col-sm" style="border-style: none;">
      <a href="Classroom.jsp" style="text-decoration:none">
      <img src="img/imagecard3.jpg" class="card-img-top" height="250px" style="border-style:solid;border-color:black;"></a>
      <div class="card-body">
        <h5 class="card-title">My Classroom</h5>
        <p class="card-text">Ask and discuss all your doubts and problems with you classmates and teachers.
        </p>
        <a href="#" class="btn btn-primary">Go To Classroom Section</a>
      </div>
    </div>
</div>
</div>
<!--------------------------------------- Cards End---------------------------------------------------->

<!-------------------------------------------Footer-------------------------------------------------------->
<div class="container ">
  <footer class="blog-footer">
    <div class="float-left my-2">Copyright © 2019 - <i>A<i>kademiKs</div>
    <div class="float-right my-2">
      <a href="#">Back to top</a>
    </div>
  </footer>
</div>
<!----------------------------------------Footer End------------------------------------------------------->

<!---------------------------------------My JavaScript----------------------------------------------------->


<%if(session.getAttribute("user")!=null)
	{%>
	<script>
	document.getElementById("nav2").style.display = "none";
	document.getElementById("nav3").style.display = "block";
	</script>
	<%}
	else
	{
	%><script>
	document.getElementById("nav3").style.display = "none";
	document.getElementById("nav2").style.display = "block";
	</script>
<%	}%>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>