package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JdbcUtil {
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
//			환경설정과 맞는 데이터 베이스 사용 (집 -> xe / 학교 -> orcl)
//			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hr", "hr");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
		} catch (Exception e) {
			System.out.println("DB 연결 실패");
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Connection conn, PreparedStatement pstmt) {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				System.out.println("pstmt.close() 실패");
				e.printStackTrace();
			}
		}
		
		if (conn != null) {
			try {
				conn.close();	
			} catch (Exception e) {
				System.out.println("conn.close() 실패");
				e.printStackTrace();
			}
		} 
	}
	
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				System.out.println("rs.close() 실패");
				e.printStackTrace();
			}
		}
		
		close(conn, pstmt);
	}

}