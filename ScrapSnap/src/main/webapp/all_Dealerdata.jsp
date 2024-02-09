<%@page import="org.hibernate.Session" %>
<%@page import="com.helper.factoryprovider" %>
<%@page import="org.hibernate.Query" %>
<%@page import="java.util.List" %>
<%@page import="com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Data</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>

 <a href="docterlogout.jsp">Logout</a>
     <%
                 HttpSession st=request.getSession();
                 String LoggedUser=(String)session.getAttribute("LoggedUser");
                 if(LoggedUser!=null)
                 {
                 out.print("Welcome,"+LoggedUser);
                 }
                 else
                 {
                 out.println("Something went wrong");
                  }
       %>

<h2>ScarpDealer's Data</h2>
    
    <table border="1" style="text-align:center">
        <thead>
            <tr>
                
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Password</th>
                <th>Metal Price</th>
                <th>Paper Price</th>
                <th>Plastic Price</th>
                <th>Gender</th>
                <th>Date</th>
                <th>Delete</th>
                <th>Edit</th>
            </tr>
        </thead>
        <tbody>



<% 
Session s=factoryprovider.getFactory().openSession();

Query q=s.createQuery("from Dealer");

List <Dealer> list=q.list();
for(Dealer note:list)
{
	
	
%>

     <tr>
     
       <td><%=note.getName() %></td>
       <td><%=note.getNumber()%></td> 
       <td><%=note.getEmail()%></td> 
       <td><%=note.getPassword()%></td>
       <td><%=note.getMetal()%></td>
       <td><%=note.getPaper()%></td> 
       <td><%=note.getPlastic()%></td>
       <td><%=note.getGender()%></td>
       <td><%=note.getAddDate() %></td>  
       <td><a href="DeleteDealer?note_id=<%=note.getId()%>">Delete</a></td>"
       <td><a href="edit_dealer.jsp?note_id=<%=note.getId()%>">Update</a></td>"
       </tr>  
      
       
<% 

}
s.close();
%>

</tbody>
        
  </table>  

</div>

</div>

</div>
</body>
</html>