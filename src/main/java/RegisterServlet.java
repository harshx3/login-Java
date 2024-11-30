import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class RegisterServlet extends HttpServlet {
	
	Connection con;
	public void init(ServletConfig config) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java16","root","admin123");
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			PreparedStatement st = con.prepareStatement("insert into users values ('"+name+"','"+username+"','"+password+"') ");
			st.executeUpdate();
			out.println("Registered Successfully<br>");
			out.println("Click <a href=\"/LoginApp/Login.jsp\">here</a> to login");
		}
		catch(Exception e) {
			out.println(e);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void destroy() {
		try {
			con.close();
		}
		catch(Exception e) {
			
		}
	}

}
