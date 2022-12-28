

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterVoter
 */
@WebServlet("/RegisterVoter")
public class RegisterVoter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		
		dbManager db = new dbManager(); 
		java.sql.Connection con = db.getConnection();
		
		String name = request.getParameter("uname");
		String number = request.getParameter("uphonenumber");
		String email = request.getParameter("uemail");
		String vnumber = request.getParameter("card");
		String address = request.getParameter("Address");
		String date = request.getParameter("date");
		
		
		
		try {
			PreparedStatement st = con.prepareStatement("insert into voters(uName,pNumber,email,vNumber,Address,dob)value('"+name+"','"+number+"','"+email+"','"+vnumber+"','"+address+"','"+date+"')");
			st.executeUpdate();
			response.sendRedirect("adminwelcome.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
