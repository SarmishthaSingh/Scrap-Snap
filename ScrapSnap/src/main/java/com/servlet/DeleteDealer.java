package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Dealer;
import com.helper.factoryprovider;

public class DeleteDealer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
       public DeleteDealer() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
try {
			
			int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s=factoryprovider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
	        Dealer note=(Dealer)s.get(Dealer.class,noteId);
	        s.delete(note);
	        
	        tx.commit();
			s.close();
			response.sendRedirect("all_Dealerdata.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace(); 
		}

		
		
	}
}























