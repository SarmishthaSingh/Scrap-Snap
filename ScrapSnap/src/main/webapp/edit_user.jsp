<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


 <%@ page import="com.helper.*,org.hibernate.*,com.entities.*" %>

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
   
     <%
 
  int noteId=Integer.parseInt(request.getParameter("note_id").trim());
   Session s=factoryprovider.getFactory().openSession();
   User note=(User)s.get(User.class,noteId);
	
  
  %>
   
    
<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom" style="background-color:BlueSky;">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4 style="color: Green;background-color:Black;">User Edit Page</h4>
					</div>
					<div class="card-body">
						<form action="UserUpdate" method="post" onsubmit="validatePhoneNumber()">
							  <input value="<%=note.getId()%>" name="noteId" type="hidden"  />
							<div class="form-group">
								<label>Full Name</label> <input type="name" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name" placeholder="Enter Your Name" required value="<%=note.getName()%>">

							</div>
							<div class="form-group">
								<label>Contact</label> <input type="number" class="form-control"
									id="phone" name="number" 
									placeholder="Enter Your Number" required value="<%=note.getNumber()%>">
							</div>

							<div class="form-group">
								<label>Email</label> <input type="email" class="form-control"
									id="exampleInputPassword1" name="email"
									placeholder="Enter Your Email" required value="<%=note.getEmail()%>">
							</div>
							
							
							<div class="form-group">
								<label>Password</label> <input type="hide" class="form-control"
									id="exampleInputPassword1" name="password"
									placeholder="Enter Your Password" required value="<%=note.getPassword()%>">
							</div>

							
							
							<div class="form-group">
								<label>Metal</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="metal" placeholder="Enter Metal Price" required value="<%=note.getMetal()%>">

							</div>
							<div class="form-group">
								<label>Paper</label> <input type="text" class="form-control"
									id="phone" name="paper"
									placeholder="Enter Paper price" required value="<%=note.getPaper()%>">
							</div>

							<div class="form-group">
								<label>Plastic</label> <input type="plastic" class="form-control"
									id="exampleInputPassword1" name="plastic"
									placeholder="Enter Plastic price" required value="<%=note.getPlastic()%>">
							</div>
							
							

							<button type="submit"
								class="btn btn-primary bodge-pill btn-block" value="register">Register</button>
								
							<!-- <a href="dealerLogin.jsp">Login</a>	If you Have a Account -->
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













