package src.convertmonney;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amazonaws.lambda.demo.ConvertMonnaie;
import com.amazonaws.lambda.demo.input.ConverterInput;


/**
 * Servlet implementation class ConvertMonney
 */
@WebServlet("/ConvertMonney")
public class ConvertMonney extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//@EJB
	//private IConvertMonnaie inter;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConvertMonney() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String deviseVoulue = String.valueOf(request.getParameter("devise"));
		Double prix = Double.valueOf(request.getParameter("prix"));
		
		ConverterInput input = new ConverterInput();
		input.setDeviseVoulue(deviseVoulue);
		input.setPrix(prix);
		
		ConvertMonnaie cm = new ConvertMonnaie();
		Double d = cm.lambdaFunction(input);
		
		request.setAttribute("prixConverti", d);
		request.getRequestDispatcher("test.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
