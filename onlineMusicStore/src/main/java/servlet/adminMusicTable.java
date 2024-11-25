package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Music;
import services.cartServices;


@WebServlet("/adminMusicTable")
public class adminMusicTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public adminMusicTable() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		cartServices services = new cartServices();
		ArrayList<Music> music = services.getAllMusic();
		request.setAttribute("music",music);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("addToCart.jsp");
		dispacher.forward(request, response);
	}

}
