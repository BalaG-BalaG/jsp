package com.mypack;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
import org.apache.jasper.tagplugins.jstl.core.Out;
import java.io.IOException;
import java.io.PrintWriter;


/**
 * Servlet implementation class Login
 */

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String RegisterNo = request.getParameter("regno");
		String DOB = request.getParameter("dob");
	
		Connection connection = null;
		Statement statement = null, statement2 = null;
		ResultSet resultSet = null, resultSet2 = null, resultSet3 = null;
		
		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/gradeportal","postgres","Balaji#06");
			statement = connection.createStatement();
			statement2 = connection.createStatement();
			String sql ="SELECT * FROM student";
			boolean found1 = false;

			resultSet = statement.executeQuery(sql);
			resultSet3 = statement2.executeQuery("select * from sem1");
			while(resultSet.next() && resultSet3.next()){
				String reg = resultSet.getString("RegisterNo");
				String name = resultSet.getString("Name");
				String email = resultSet.getString("Email");
				String mob = resultSet.getString("MobileNo");
				String date = resultSet.getString("dob");
			
				int c1 = resultSet3.getInt(2);
				int c2 = resultSet3.getInt(3);
				int c3 = resultSet3.getInt(4);
				int c4 = resultSet3.getInt(5);
				int c5 = resultSet3.getInt(6);
				int c6 = resultSet3.getInt(7);
				
				if(RegisterNo.equals(reg) && DOB.equals(date)) {
					request.setAttribute("reg", reg);
					request.setAttribute("name", name);
					request.setAttribute("email", email);
					request.setAttribute("mob", mob);
					request.setAttribute("date", date);
					
					request.setAttribute("c1", c1);
					request.setAttribute("c2", c2);
					request.setAttribute("c3", c3);
					request.setAttribute("c4", c4);
					request.setAttribute("c5", c5);
					request.setAttribute("c6", c6);
					request.getRequestDispatcher("/stud_details.jsp").forward(request, response);
					response.sendRedirect("stud_details.jsp");
					found1 = true;
					break;
				}
			}
			if(found1==false) {
				request.setAttribute("error", "Incorrect RegisterNo or Date of Birth");
				request.getRequestDispatcher("/StudentLogin.jsp").forward(request, response);
				response.sendRedirect("StudentLogin.jsp");
			}
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		
		String staffid = request.getParameter("sid");
		String password = request.getParameter("pass");
		boolean found2 = false;
		
		try {
			String sql2 = "select * from staff";
			
			resultSet2 = statement.executeQuery(sql2);
			while(resultSet2.next()) {
				String sid = resultSet2.getString("staffid");
				String pass = resultSet2.getString("password");
				
				request.setAttribute("sid",sid);
				request.setAttribute("pass", pass);
				
				if(sid.equals(staffid) && pass.equals(password)) {
					request.getRequestDispatcher("/gradeSubmission.jsp").forward(request, response);
					response.sendRedirect("gradeSubmission.jsp");
					found2 = true;
					break;
					
				}
			}
			if(found2==false) {
				request.setAttribute("Error", "Invalid Staff ID or Password");
			    request.getRequestDispatcher("/StaffLogin.jsp").forward(request, response);
			    response.sendRedirect("StaffLogin.jsp");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		String RegN = request.getParameter("RegN");
		int cs1 = Integer.parseInt(request.getParameter("cs1"));
		int cs2 = Integer.parseInt(request.getParameter("cs2"));
		int cs3 = Integer.parseInt(request.getParameter("cs3"));
		int cs4 = Integer.parseInt(request.getParameter("cs4"));
		int cs5 = Integer.parseInt(request.getParameter("cs5"));
		int cs6 = Integer.parseInt(request.getParameter("cs6"));
		
		request.setAttribute("Success", "Values Entered Successfully");
		try {
			if(RegN!=null) {
			PreparedStatement ps=connection.prepareStatement("INSERT INTO sem1 VALUES (?,?,?,?,?,?,?)");
			ps.setString(1,RegN);
			ps.setInt(2,cs1);
			ps.setInt(3,cs2);
			ps.setInt(4,cs3);
			ps.setInt(5,cs4);
			ps.setInt(6,cs5);
			ps.setInt(7,cs6);
					
			ps.executeUpdate();
			
			}
			//request.getRequestDispatcher("/StaffLogin.jsp").forward(request, response);
			//response.sendRedirect("StaffLogin.jsp");
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
