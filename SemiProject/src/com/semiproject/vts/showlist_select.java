package com.semiproject.vts;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import vts_DAO.Vts_DAO;
import vts_VO.Vts_showVO;

/**
 * Servlet implementation class SawonFrontController
 */
//@WebServlet("/SawonFrontController")
@WebServlet("*.do") 
public class showlist_select extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public showlist_select() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		System.out.println(request.getRequestURI()); // 
		

		System.out.println(request.getContextPath()); // /

		String c = request.getRequestURI().substring(request.getContextPath().length());
		

		String str = null;
		switch (c) {
			case "/getinfo.do":
				Vts_DAO tidao1 = null;
				try {
					tidao1 = new Vts_DAO();
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
					ArrayList<Vts_showVO> alist1 = null;
				try {
					alist1 = tidao1.getAllInfo();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
					request.setAttribute("alist1", alist1);
					str = "paymentPage1.jsp";
					
				break;
				
			case "/getinfo2.do":
				Vts_DAO tidao2 = null;
				try {
					tidao2 = new Vts_DAO();
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
					ArrayList<Vts_showVO> alist2 = null;
				try {
					alist2 = tidao2.getAllInfo2();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
					request.setAttribute("alist1", alist2); 
					str = "paymentPage1.jsp";
					
				break;
				
		} // switch-end
			
		RequestDispatcher rd1 = request.getRequestDispatcher(str);
		rd1.forward(request, response);
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
