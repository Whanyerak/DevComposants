package src.cart;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Cart_entity;
import entities.Vehicule_entity;
import interfaces.ICart;
import interfaces.IUser;
import interfaces.IVehicule;

/**
 * Servlet implementation class Cart_Servlet
 */
@WebServlet("/Cart_Servlet")
public class Cart_Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@EJB
	private IVehicule interV;
	
	@EJB
	private IUser interU;
	
	@EJB
	private ICart interC;
	
    public Cart_Servlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer userId = Integer.valueOf(request.getParameter("idUser"));
		Cart_entity cart = interC.getCart(userId);
			
		Integer vehicule_id = Integer.valueOf(request.getParameter("id"));	
		if(vehicule_id != null && vehicule_id != 0) {

			 Vehicule_entity vehicule = interV.getVehicule(vehicule_id);
		     interC.addProduct(cart, vehicule);

		     System.out.println("product "+vehicule.getModele()+" added");
		     request.getRequestDispatcher("index.jsp").forward(request, response);
		     
		 }

		 String checkout = request.getParameter("checkout");
		 if(checkout != null && checkout.equalsIgnoreCase("yes")){
		      // Request instructs to complete the purchase
		      interC.checkOut(cart);
		      System.out.println("Shopping cart checked out ");
		      request.getRequestDispatcher("index.jsp").forward(request, response);
		 }
		 
		 request.getRequestDispatcher("index.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		
	}
	
}
