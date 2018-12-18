package src.vehicule;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Vehicule_entity;
import interfaces.IVehicule;

@WebServlet("/Vehicule_Servlet")
public class Vehicule_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private IVehicule interVehicule;
	
    public Vehicule_Servlet() {
        super();
        System.out.println("number 1");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("number 44");
		int id = Integer.valueOf(request.getParameter("id"));
		System.out.println("number 2");
		Vehicule_entity ve = interVehicule.getVehicule(id);
		System.out.println("number 3");
		request.setAttribute("vehicule", ve);
		System.out.println("number 4");
		request.getRequestDispatcher("vehiculeDetail.jsp").forward(request, response);
		System.out.println("number 5");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("number 6");
	}

}
