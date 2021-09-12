package servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbConnection.DBConn;

@WebServlet("/NewUser")
public class NewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NewUser() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

		try {

			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String username = request.getParameter("user");
			String password = request.getParameter("pass");
			String email = request.getParameter("email");
			String nic = request.getParameter("nic");
			int phone = Integer.parseInt(request.getParameter("phone"));
			String type = null;
			if(request.getParameter("type")!=null)
			{
				type = request.getParameter("type");
			}
			
			Connection con = DBConn.getconn();
			String sql = "INSERT INTO user(fname,lname,username,password,nic,email,contact,uType) VALUES ('"
					+ fname + "','" + lname + "','" + username + "','" + password + "','" + nic + "','" + email + "','"
					+ phone + "', '"+ type +"')";

			java.sql.PreparedStatement stm = con.prepareStatement(sql);
			stm.executeUpdate(sql);
			System.out.println("User Successfully Registered!");
			response.sendRedirect("admin/dashboard.jsp");
			con.close();

		} catch (Exception ex) {
			System.out.println("error " + ex);
		}

	}

}
