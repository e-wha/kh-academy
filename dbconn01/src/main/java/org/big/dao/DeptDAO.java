package org.big.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.big.dto.DeptDTO;

public class DeptDAO {
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "scott";
	String passwd = "1111";
	
	public DeptDAO() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			
		}
	}
	
	public ArrayList<DeptDTO> select(){
		ArrayList<DeptDTO> list = new ArrayList<DeptDTO> ();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userid, passwd);
			String query = "select * from dept";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int deptno = rs.getInt("deptno");
				String dname = rs.getString("dname");
				String loc = rs.getString("loc");
				
				DeptDTO data = new DeptDTO(deptno, dname, loc);
				list.add(data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
			if(rs != null) rs.close();
			if(pstmt != null) rs.close();
			if(conn != null) conn.close();
			}	catch (Exception e2) {
				
			} finally {
				
			}
		}
		
		return list;
	}
}
