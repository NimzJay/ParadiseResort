package com.spring.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.dao.UserDao;
import com.spring.model.User;

/**
 * Servlet implementation class NewUserController
 */
public class NewUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String type = null;
		if (request.getParameter("type") != null) {
			type = request.getParameter("type");
		}

		ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");

		UserDao dao = context.getBean("udao", UserDao.class);
		User st = new User();
		st.setFname(fname);
		st.setLname(lname);
		st.setUsername(username);
		st.setPassword(password);
		st.setEmail(email);
		st.setNic(nic);
		st.setContact(phone);
		st.setuType(type);

		int r = dao.addUser(st);
		// request.setAttribute("msg", r);
		if (r == 1) {
//			RequestDispatcher rd = request.getRequestDispatcher("/dashboard.jsp");
//			rd.forward(request, response);
			response.sendRedirect("/dashboard.jsp");
			return;
		}
		

	}

}
