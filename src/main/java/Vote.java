

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Vote
 */
@WebServlet("/Vote")
public class Vote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		dbManager db = new dbManager(); 
		java.sql.Connection con = db.getConnection();
		
		String vNumber = request.getParameter("vNumber");
		String partie = request.getParameter("partie");
		
		try {

		PreparedStatement st1 = con.prepareStatement("insert into temp_vc_number(vNumber)value('"+vNumber+"')");
		PreparedStatement st2 = con.prepareStatement("insert into vote(vNumber,partie)value('"+vNumber+"','"+partie+"')");
		
		st1.executeUpdate();
		st2.executeUpdate();
		
		response.sendRedirect("index.jsp");
		
		}catch(Exception e) {
			e.printStackTrace();
		}
			
		
		
	}
}
