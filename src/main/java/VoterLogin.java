

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class VoterLogin
 */
@WebServlet("/VoterLogin")
public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		dbManager db = new dbManager(); 
		java.sql.Connection con = db.getConnection();
		
		String vNumber = request.getParameter("voterNumber");
		
		

		try {
			
			PreparedStatement st1 = con.prepareStatement("select vNumber from temp_vc_number where vNumber = '"+vNumber+"'");
			ResultSet rs1 = st1.executeQuery("select vNumber from temp_vc_number where vNumber = '"+vNumber+"'");
			
			if(rs1.next()) {
				
				response.sendRedirect("voted.jsp");
				
			} else {
				
			}
				try {
					PreparedStatement st = con.prepareStatement("select * from voters where vNumber = '"+vNumber+"'");
					ResultSet rs = ((java.sql.Statement)st).executeQuery("select * from voters where vNumber = '"+vNumber+"'");
					
					if(rs.next()) {
						
						response.sendRedirect("voterwelcome.jsp");
						
					}else {
						
						response.sendRedirect("invalid.jsp");
						
					}
				}catch(Exception e) {
						e.printStackTrace();
					}
			
		}catch(Exception e) {
			e.printStackTrace();
		}

	         
		
	}

}
