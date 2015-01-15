package com.naver.pinku.user.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.naver.pinku.user.controller.JoinController;
import com.naver.pinku.user.model.Member;
import com.naver.pinku.util.DBUtil;

/**
 * Servlet implementation class JoinDoServlet
 */
public class JoinDoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JoinDoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {

			String email = request.getParameter("email");
			String pwd = request.getParameter("password");

			Member member = new Member(email, pwd);

			JoinController controller = new JoinController();
			if (controller.join(member)) {
				response.sendRedirect("./login");
			} else {
				// 실패
				System.out.println("member 테이블에 새로운 레코드 추가에 실패했습니다.");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("member 테이블에 새로운 레코드 추가에 실패했습니다.");
		} finally {

			try {
				DBUtil.close(conn, pstmt);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
