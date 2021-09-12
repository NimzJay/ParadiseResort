package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbConnection.DBConn;

/**
 * Servlet implementation class RoomBooking
 */
@WebServlet("/RoomBooking")
public class RoomBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomBooking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		int price; //Room price
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		
		try {
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String email = request.getParameter("email");
			String tel = request.getParameter("tel");
			Date stdate=Date.valueOf(request.getParameter("sdate"));
			Date ldate=Date.valueOf(request.getParameter("edate"));
			int numofg = Integer.parseInt(request.getParameter("numofg"));
			String room = request.getParameter("rad");
			if(room.equals("Room 1")) {
				  price = 20000;
			}else if(room.equals("Room 2")){
				  price = 25000;
			}else if(room.equals("Room 3")){
				 price = 30000;
			}else if(room.equals("Room 4")) {
				price = 50000;	
			}else if(room.equals("Room 5")) {
				price = 70000;
			}else {
				price = 100000;
			}
			Connection con = DBConn.getconn();
			String sql = "INSERT INTO booking(firstname, secondname, email, tel, checkin, checkout, guests, type, price) VALUES ('" + fname + "','" + lname + "','" + email + "','" + tel + "','" + stdate + "','" + ldate + "','" + numofg + "','" + room + "','" + price + "')";

			java.sql.PreparedStatement st = con.prepareStatement(sql);
			st.executeUpdate(sql);
			System.out.println("Room Booked Successfully");
//			request.getRequestDispatcher("../client/UserProfileBookingStatusPage.jsp").forward(request, response);
			con.close();
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

}
