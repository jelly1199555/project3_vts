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
import vts_VO.Vts_memVO;

/**
 * Servlet implementation class orderSelect
 */


@WebServlet("/orderSelect")
public class orderSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderSelect() {
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
		
		String kaja = null;
		Vts_DAO vdao=null;
		ArrayList <Vts_memVO> arvv = null;
		
		try {
			vdao = new Vts_DAO();
			arvv = vdao.orderSelect(id);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("arvv", arvv);
		kaja = "dbtest2.jsp";
		RequestDispatcher rd1 = request.getRequestDispatcher(kaja);
		rd1.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
