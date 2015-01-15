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
				System.out.println("����!!" + email + " " + pwd);

				String sql = "insert into member (e_mail, password) values (?, ?);";
				PreparedStatement pstmt;

				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, email);
				pstmt.setString(2, pwd);

				if (pstmt.executeUpdate() > 0) {
					return true;
				}

				System.out.println("��� ���̺� ���ο� ���ڵ带 �߰��߽��ϴ�.");
			} else {
				System.out.println("member ���̺� ���ο� ���ڵ� �߰��� �����߽��ϴ�.");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}
