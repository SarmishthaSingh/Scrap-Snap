<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login page</title>

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
                         <div class="card-header text-center text-white bg-custom">
                          <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
                          <marquee><h3 style="color:green;">SignUp Successfully</h3></marquee>
                          <h4 style="color:Green;Background-color:Black;">User Login </h4>
                         </div>  
                         <div class="card-body">
                             <form action="usersign.jsp" method="post">
                          
                           <div class="form-group">
                                <label>Email</label>
                          <input type="text" class="form-control" id="exampleInputPassword1" name="email" placeholder="Enter Email">
                        </div>    
                           <div class="form-group">
                                <label>Password</label>
                          <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Enter Password">
                        </div>
                      
                    <button type="submit" class="btn btn-primary bodge-pill btn-block" value="Login">Login</button>
                    
                     <div class="form-group">
                           <a href="UserforgotPassword.jsp">forgot password!</a>
                        </div>  
                    
                    </form> 
                            
                      </div>
                     </div>
                  </div> 
             </div>
         </div>
         
 <%@include file="CommenContent/Footer.jsp" %>        
</body>
</html>