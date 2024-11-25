package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.cart;
import services.cartServices;


@WebServlet("/addCart")
public class addCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public addCart() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	            
	          
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 	cart c = new cart();
		 
		 	c.setMusicid(request.getParameter("mid"));
		    c.setMusictype(request.getParameter("musictype"));
		    c.setMusicquality(request.getParameter("musicquality"));
		
		 cartServices cservice = new cartServices();
		 cservice.regCart(c);
		 
		 RequestDispatcher dispatcher = request.getRequestDispatcher("addToCart.jsp");
		 
		 dispatcher.forward(request,response);
	}
}
