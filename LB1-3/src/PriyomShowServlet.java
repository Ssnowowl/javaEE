import java.io.IOException;

import java.util.ArrayList;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cdi.Priyom;
import cdi.PriyomBD;
@WebServlet("/show_priyom")
public class PriyomShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		        throws ServletException, IOException {
		        ArrayList<Priyom> priyoms = PriyomBD.select();
		        request.setAttribute("priyom", priyoms);
		          
		        getServletContext().getRequestDispatcher("/showpriyom.jsp").forward(request, response);
		    } 

}
