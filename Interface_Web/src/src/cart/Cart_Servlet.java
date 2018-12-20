package src.cart;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Vehicule_entity;
import interfaces.ICart;
import interfaces.IVehicule;

/**
 * Servlet implementation class Cart_Servlet
 */
@WebServlet("/Cart_Servlet")
public class Cart_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private ICart interC;
	@EJB
	private IVehicule interV;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.valueOf(request.getParameter("id"));
		
		Vehicule_entity ve = interV.getVehicule(id);
		
		interC.addProduct(ve);

		request.getRequestDispatcher("Added_page.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
