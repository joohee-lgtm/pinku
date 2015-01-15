package com.naver.pinku.user.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.naver.pinku.user.model.Member;
import com.naver.pinku.util.DBUtil;

public class JoinController {
	public JoinController() {

	}

	public boolean join(Member member) {
		String email = member.getMail();
		String pwd = member.getPassword();
		try {
			if (email != null && !email.isEmpty() && pwd != null
					&& !pwd.isEmpty()) {

				Connection conn = DBUtil.getConnection();
				System.out.println("성공!!" + email + " " + pwd);

				String sql = "insert into member (e_mail, password) values (?, ?);";
				PreparedStatement pstmt;

				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, email);
				pstmt.setString(2, pwd);

				if (pstmt.executeUpdate() > 0) {
					return true;
				}

				System.out.println("멤버 테이블에 새로운 레코드를 추가했습니다.");
			} else {
				System.out.println("member 테이블에 새로운 레코드 추가에 실패했습니다.");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}
