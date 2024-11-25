package servlet;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.cart;
import services.cartServices;

@WebServlet("/updateCart")
public class updateCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
           
    public updateCart() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		cart crt = new cart();
		
		crt.setMusicid(request.getParameter("mid"));
		crt.setMusictype(request.getParameter("musictype"));
		crt.setMusicquality(request.getParameter("musicquality"));
		
		cartServices service = new cartServices();
		service.updateCart(crt);
		
		//RequestDispatcher dispatcher = request.getRequestDispatcher("/adminTable.jsp");
		response.sendRedirect(request.getContextPath() + "/update.jsp");
		//dispatcher.forward(request, response);
	}

}