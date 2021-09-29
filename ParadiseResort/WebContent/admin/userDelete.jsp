<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Arrays"%>
<%@page import="dbConnection.DBConn"%>

<%
String id= request.getParameter("d");
int no = Integer.parseInt(id);

String driverName = "com.mysql.jdbc.Driver";
try {
	System.out.println("Connected ");
	Class.forName(driverName);
} catch (ClassNotFoundException ex) {
	System.out.println("Error" + ex);
	ex.printStackTrace();
}
Connection con = DBConn.getconn();
Statement st = con.createStatement();
st.executeUpdate("DELETE FROM `user` WHERE `uid` = '"+no+"' ");
response.sendRedirect("./dashboard.jsp");
%>