package servlets;

import java.io.IOException; 
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import dbConnection.DBConn;
import servlets.Session;

/**
 * Servlet implementation class Signin
 */
@WebServlet("/Signin")
public class Signin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Signin() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	public class loginDao {
		public String check(String user, String pass) {
			try {

				String sql = "SELECT * FROM user";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DBConn.getconn();
				PreparedStatement st = con.prepareStatement(sql);
				ResultSet rs = st.executeQuery(sql);
				while (rs.next()) {
					String typeDB = rs.getString("uType");

					if (user.equals(rs.getString("username")) && pass.equals(rs.getString("password"))
							&& typeDB.equals("client")) {
						return "clientUI";
					}
					if (user.equals(rs.getString("username")) && pass.equals(rs.getString("password"))
							&& typeDB.equals("admin")) {
						return "adminUI";
					}
				}
				con.close();

			} catch (Exception ex) {
				ex.printStackTrace();
			}
			return "Invalid User Credentials";
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		
		PrintWriter out = response.getWriter();
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		System.out.println(user + pass);

		loginDao dao = new loginDao();

		try {

			String userValidate = dao.check(user, pass);
			if (userValidate.equals("clientUI")) {
				System.out.println("Redirected to Client UI");
				// request.getRequestDispatcher("client/index.jsp").forward(request, response);
				Session.setUser(user);
				response.sendRedirect("client/index.jsp");
				
			} else if (userValidate.equals("adminUI")) {
				System.out.println("Redirected to Admin UI");
				// request.getRequestDispatcher("admin/dashboard.jsp").forward(request,response);
				Session.setUser(user);
				response.sendRedirect("admin/dashboard.jsp");
			} else {
				// request.getRequestDispatcher("client/Signin.jsp").forward(request, response);
				response.sendRedirect("client/Signin.jsp");
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
