package be.vdab.servlets;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import be.vdab.entities.Adres;
import be.vdab.entities.Gemeente;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet(urlPatterns = "/index.htm", name = "indexservlet")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VIEW = "/WEB-INF/JSP/index.jsp";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("adres", new Adres("Dorpstraat", "69", new Gemeente("Dorp", 9999)));
		int dagVanDeWeek = Calendar.getInstance().get(Calendar.DAY_OF_WEEK);
		request.setAttribute("openGesloten",
				dagVanDeWeek == Calendar.MONDAY || dagVanDeWeek == Calendar.THURSDAY ? "gesloten" : "open");
		request.setAttribute("phonenumberHelpdesk", this.getInitParameter("phonenumberHelpdesk"));
		request.getRequestDispatcher(VIEW).forward(request, response);
	}

}
