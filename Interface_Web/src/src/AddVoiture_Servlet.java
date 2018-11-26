package src;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Moto_entity;
import entities.Voiture_entity;
import interfaces.Vehicule_interface;

/**
 * Servlet implementation class AddVoiture_Servlet
 */
@WebServlet("/AddVoiture_Servlet")
public class AddVoiture_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private Vehicule_interface vehicule_inter;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVoiture_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List<Voiture_entity> voitures = vehicule_inter.get_voitures();
		List<Moto_entity> motos = vehicule_inter.get_motos();

		
		request.setAttribute("voitures", voitures);
		request.setAttribute("motos", motos);
		request.getRequestDispatcher("Get_content.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String marque = String.valueOf(request.getParameter("marque"));
		String modele = String.valueOf(request.getParameter("modele"));
		String prix = String.valueOf(request.getParameter("prix"));
//		String couleur = String.valueOf(request.getParameter("couleur"));
		Boolean roulettes = Boolean.valueOf(request.getParameter("roulettes"));
		
		//vehicule_inter.add_voiture(marque, modele, prix, couleur);
//		Voiture_entity v = new Voiture_entity(marque, modele, prix, couleur);
//		vehicule_inter.add_voiture(v);
		Moto_entity m = new Moto_entity(marque, modele, prix, roulettes);
		vehicule_inter.add_moto(m);
				
		request.setAttribute("m", m);
//		request.setAttribute("v", v);
		request.getRequestDispatcher("Added_page.jsp").forward(request, response);
	}

}
