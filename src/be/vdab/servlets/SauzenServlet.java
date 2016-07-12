package be.vdab.servlets;

import java.io.IOException;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import be.vdab.dao.SausDAO;

/**
 * Servlet implementation class SauzenServlet
 */
@WebServlet("/sauzen.htm")
public class SauzenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final SausDAO sausDAO = new SausDAO();
	private static final String VIEW = "/WEB-INF/JSP/sauzen.jsp";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SauzenServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("sauzen", sausDAO.findAll());
		String ingredient = request.getParameter("ingredient1");
		if (ingredient != null) {
			if (ingredient.isEmpty()) {
				request.setAttribute("fouten", Collections.singletonMap("ingredient", "verplicht"));
			} else {
				request.setAttribute("querySauzen", sausDAO.findSauzen(ingredient));
			}
		}
		request.getRequestDispatcher(VIEW).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
