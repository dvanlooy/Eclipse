package be.vdab.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import be.vdab.entities.Saus;

/**
 * Servlet implementation class SauzenServlet
 */
@WebServlet("/sauzen.htm")
public class SauzenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VIEW = "/WEB-INF/JSP/sauzen.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SauzenServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Saus> sauzen = new ArrayList<>();
		sauzen.add(new Saus(1L, "mayonaise", 
				new String[]{"ei", "plantaardige olie", "azijn", "mosterd", "peper", "zout"}));
		sauzen.add(new Saus(2L, "cocktail", 
				new String[]{"mayonaise", "ketchup", "whiskey"}));
		sauzen.add(new Saus(3L, "mosterd", 
				new String[]{"mosterdzaad", "water", "azijn", "zout", "peper", "rozemarijn"}));
		sauzen.add(new Saus(4L, "tartare", 
				new String[]{"mayonaise", "ei", "ui", "peterselie", "augurk", "dragon", "kappertjes", "bieslook"}));
		sauzen.add(new Saus(5L, "vinaigrette", 
				new String[]{"plantaardige olie", "azijn", "mosterd", "peper", "zout", "water"}));
		request.setAttribute("sauzen", sauzen);
		request.getRequestDispatcher(VIEW).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
