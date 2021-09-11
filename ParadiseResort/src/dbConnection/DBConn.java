package dbConnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dbCon")
public class DBConn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DBConn() {
		super();
	}

	public static Connection getconn() {
		Connection con = null;

		try {

			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paradiseresort?useTimezone=true&serverTimezone=UTC", "root", "");
			System.out.println("DB Connected");
			return con;
			

		} catch (Exception ex) {
			System.out.println("error " + ex);
		}
		return null;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}