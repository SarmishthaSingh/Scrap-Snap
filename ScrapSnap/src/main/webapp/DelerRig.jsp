<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ScrapSnap :Scrap Dealer Page </title>
<%--  %@include file="CommenContent/commen.jsp" %>--%><
    <%@ include file="all_js_css.jsp"%>

</head>

<body>

     <%@ include file="navbar.jsp"%>
     
      
    <style>
    body {
       background-image: url('img/Scrap.jpg');
        
        
         }
</style>
   
    
<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom" style="background-color:BlueSky;">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4 style="color: Green;background-color:Black;">Scrap Dealer Registration</h4>
					</div>
					<div class="card-body">
						<form action="SaveDealer" method="post" onsubmit="validatePhoneNumber()">
							<!--<form action="UserServlet1" method="post">-->
							<div class="form-group">
								<label>Full Name</label> <input type="name" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name" placeholder="Enter Your Name" required>

							</div>
							<div class="form-group">
								<label>Contact</label> <input type="number" class="form-control"
									id="phone" name="number"
									placeholder="Enter Your Number" required>
							</div>

							<div class="form-group">
								<label>Email</label> <input type="email" class="form-control"
									id="exampleInputPassword1" name="email"
									placeholder="Enter Your Email" required>
							</div>
							
							
							<div class="form-group">
								<label>Password</label> <input type="hide" class="form-control"
									id="exampleInputPassword1" name="password"
									placeholder="Enter Your Password" required >
							</div>

							
							
							<div class="form-group">
								<label>Metal</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="metal" placeholder="Enter Metal Price" required>

							</div>
							<div class="form-group">
								<label>Paper</label> <input type="text" class="form-control"
									id="phone" name="paper"
									placeholder="Enter Paper price" required>
							</div>

							<div class="form-group">
								<label>Plastic</label> <input type="plastic" class="form-control"
									id="exampleInputPassword1" name="plastic"
									placeholder="Enter Plastic price" required>
							</div>
							
							
							
							<div class="form-group">
								<label>Gender</label> <br>
								  <input type="radio" id="html" name="gender" value="Female">
                                    <label>Female</label>
                                  <input type="radio" id="css" name="gender" value="Male">
                                    <label>Male</label>
                                <input type="radio" id="javascript" name="gender" value="Other">
                                    <label>Other</label>

							</div>
							

							<button type="submit"
								class="btn btn-primary bodge-pill btn-block" value="register">Register</button>
								
							<a href="dealerLogin.jsp">Login</a>	If you Have a Account
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

    <script>
        function validatePhoneNumber() {
            var phoneNumber = document.getElementById("phone").value;
            
            // Remove any non-numeric characters from the input
            phoneNumber = phoneNumber.replace(/\D/g, '');
            
            // Check if the phone number is exactly 10 digits long
            if (phoneNumber.length === 10) {
            	 alert("Valid phone number");
              
            } else {
                // Invalid phone number
                alert("Invalid phone number. Please enter a 10-digit number.");
            }
        }
    </script>

	<br><br><br><br><br>
	
	
<%@include file="CommenContent/Footer.jsp" %>	
</body>
</html>













