package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.cart;
import services.cartServices;

@WebServlet("/adminCart")
public class adminCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public adminCart() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		cartServices service = new cartServices();
		ArrayList<cart> cart = service.getAllCart();
		request.setAttribute("cart",cart);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("adminCartTable.jsp");
		dispacher.forward(request, response);
	}

}
