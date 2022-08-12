package cl.mar.number.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		HttpSession sesion = request.getSession();
		
		Integer numeroSesion = (Integer) sesion.getAttribute("sesion");

		Integer numeroIngresado = Integer.parseInt(request.getParameter("numero"));
		
		if (sesion.getAttribute("sesion") == null) {
			Integer aleatorio = (int) (Math.random() * (100 - 0 + 1) + 0);

			sesion.setAttribute("sesion", aleatorio);			

		}
		System.out.println("numero sesion " + numeroSesion);

		
		String mensaje = "";

		if (numeroIngresado.equals(numeroSesion)) {
			mensaje = "Felicidades!! Has encontrado el numero";
		}

		if (numeroIngresado < numeroSesion) {
			mensaje = "es menor";
		}

		if (numeroIngresado > numeroSesion) {
			mensaje = "es mayor";
		}		

		request.setAttribute("mensaje", mensaje);
		request.setAttribute("ingresado", numeroIngresado);
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);		
	}

}