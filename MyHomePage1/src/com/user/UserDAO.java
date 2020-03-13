package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDAO {

	private Connection conn; // 데이터베이스에 접근하기 위한 객체
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;

	public UserDAO() throws ClassNotFoundException, SQLException {
		// 생성자
		String dbURL = "jdbc:mysql://localhost:53306/dbdb?serverTimezone=Asia/Seoul&characterEncoding=utf8";
		String dbID = "daehwan";
		String dbPW = "159663";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbID, dbPW);
	}

	public int join(User user) {
		String SQL = "insert into signin (memID,memPW,memName,memGender) values(?,?,?,?)";
		try {
			System.out.println("init");
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getMemID());
			pstmt.setString(2, user.getMemPW());
			pstmt.setString(3, user.getMemName());
			pstmt.setString(4, user.getMemGender());

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return -1;
	}

	public boolean check_id(String id, String pw) throws SQLException {
		String SQL_login = "SELECT memID,memPW FROM signin WHERE memPW='" + pw + "'";
		stmt = (Statement) conn.createStatement();
		rs = stmt.executeQuery(SQL_login);
		while (rs.next()) {
			if (id.equals(rs.getString("memID"))) {
				return true;
			}

		}
		return false;
	}

}
