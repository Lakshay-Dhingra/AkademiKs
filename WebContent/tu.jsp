<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Terms of Use</title>
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
	    
	    <!-- -------------------------------------Nav 1---------------------------------------------------- -->
	    <ul class="navbar-nav mr-auto">
	      
	      <!--------------------------------------Home-------------------------------------------------------->
	
	        <li class="nav-item">
	          <a class="nav-link" href="Home.jsp">Home</a>
	        </li>
	        
	      <!------------------------------------My Classroom-------------------------------------------------->
	
	        <li class="nav-item">
	          <a class="nav-link" href="#">My Classroom</a>
	        </li>

		  <!----------------------------------------Quiz------------------------------------------------------>
	
	        <li class="nav-item">
	          <a class="nav-link" href="#">Quiz</a>
	        </li>
	
	      <!---------------------------------------About------------------------------------------------------>
	
	        <li class="nav-item">
	          <a class="nav-link" href="AboutUs.jsp">AboutUs</a>
	        </li>
	     </ul>
	        
	      <!----------------------------------------Nav 2---------------------------------------------------->
	       
	       <div class="float-right">
	       <ul class="navbar-nav mr-auto">
	       
	      <!----------------------------------------Search--------------------------------------------------->
	      		
	      		<li class="nav-item mr-4">
	      		<form class="form-inline my-2 my-lg-0">
		        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		        <!-- button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button-->
	      		</form>
	      		</li>
	      		
		  <!----------------------------------------Login---------------------------------------------------->
	        
	        <li class="nav-item">
	        <button type="button" class="btn btn-outline-info mr-2 mb-1" data-toggle="modal" 
	        data-target="#LoginModal">
	        Login</button>
	      <!--------------------------------------Login Modal------------------------------------------------>
	          
	            <div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel" aria-hidden="true">
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
	                      <label for="exampleInputEmail1">Email address</label>
	                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
	                       placeholder="Enter email" name="email">
	                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	                    </div>
	                    <div class="form-group">
	                      <label for="exampleInputPassword1">Password</label>
	                      <input type="password" class="form-control" id="exampleInputPassword1" 
	                      placeholder="Password" name="password">
	                    </div>
	                    <!--div class="form-group form-check">
	                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
	                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
	                    </div-->
	                  
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
	
	      <!-----------------------------------------Register-------------------------------------------------->
	        
	        <li class="nav-item">
	          <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#RegisterModal">
	          Register</button>
		
		 <!--------------------------------------Register Modal------------------------------------------------>
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
	                      <label for="exampleInputEmail1">Email address</label>
	                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" 
	                      placeholder="Enter email" name="username">
	                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	                    </div>
	                    <div class="form-group">
	                      <label for="exampleInputPassword1">Password</label>
	                      <input type="password" class="form-control" id="exampleInputPassword1" 
	                      placeholder="Password" name="password">
	                    </div>
	                    <div class="form-group">
	                      <label for="exampleInputPassword1">Confirm Password</label>
	                      <input type="password" class="form-control" id="exampleInputPassword1" 
	                      placeholder="Password" name="confirmpassword">
	                    </div>
	                    <div class="form-group form-check">
	                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
	                      <label class="form-check-label" for="exampleCheck1">I've read the <a href="pp.jsp">Privacy Policy</a>
	                       and <a href="tu.jsp">Terms of use.</a></label>
	                    </div>
	                    
	                 
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
	        </div> 
	      </ul>
	    </div>
	  </nav>
	</div>
<!----------------------------------------Navbar End------------------------------------------------------->
  <br><div class="container">
    <h2>Terms of Use</h2><br>
	Terms of Use will be written soon...
</div>
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>