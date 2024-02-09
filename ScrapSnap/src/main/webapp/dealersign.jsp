<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dealer SignUp Page</title>
</head>
<body>

 <%
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
             //out.print("Driver open");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scrapsnap1","root","");
            // out.print("New Connection");
           String query="select * from  dealer where Email=? and Password=?";
           PreparedStatement ps=con.prepareStatement(query);
           ps.setString(1,email);
           ps.setString(2, password);
           ResultSet rs=ps.executeQuery();
           if(rs.next())
           {
            HttpSession st=request.getSession();
           st.setAttribute("LoggedUser",email);
           RequestDispatcher rd=request.getRequestDispatcher("all_Dealerdata.jsp");
           rd.forward(request, response);
            }
            else
            {
            	
                  //out.println("<span style=\"color: red;\">Email or Password is Wrong</span>");
            	 RequestDispatcher rd=request.getRequestDispatcher("dealerLogin.jsp");
                 rd.forward(request, response);
                 
             //out.println("<span style=\"color: red;\">Email or Password is Wrong</span>");

            }
            rs.close();
            ps.close();
            con.close();
      }   
            catch(Exception e)
              {
              out.print(e);
              }
             %>
             <br><br>
             <h3><a href="makePlan.jsp">Make Plan</a></h3>
</body>
</html>