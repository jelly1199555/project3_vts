package com.semiproject.vts;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vts_DAO.Vts_DAO;

/**
 * Servlet implementation class orderInsert
 */
@WebServlet("/orderInsert")
public class orderInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=euc-kr");
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String date = request.getParameter("ticket");
		String count = request.getParameter("count");
		String time = request.getParameter("time");
		String totpay = request.getParameter("totalPrice");
		
		boolean b = false;
		
		Vts_DAO vdao;
		try {
			vdao = new Vts_DAO();
			b = vdao.orderInsert(id, title, date, time, count, totpay);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		if(b) {
			request.setAttribute("result", "insert good");
		}else {
			request.setAttribute("result", "insert fail");
		}
		
		//RequestDispatcher rd1 = request.getRequestDispatcher("payment.jsp");
		//rd1.forward(request, response);
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
