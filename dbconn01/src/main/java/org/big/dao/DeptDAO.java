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
	
	public void input(String _deptno, String _dname, String _loc) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DriverManager.getConnection(url, userid, passwd);
			String query = "insert into dept(deptno, dname, loc) values(?, ?, ?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(_deptno));
			pstmt.setString(2, _dname);
			pstmt.setString(3, _loc);
			
			int n = pstmt.executeUpdate();
			if (n ==  1) {
				System.out.println("데이터 입력 성공");
			} else {
				System.out.println("데이터 입력 실패!!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			} finally {
				
			}
		}
	}
	
	public void deptUpdate(String _deptno, String _dname, String _loc) {
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      
	      try {
	         conn = DriverManager.getConnection(url, userid, passwd);
	         String query = "UPDATE dept SET deptno = ?, dname = ?, loc = ? WHERE deptno = ?";
	         pstmt = conn.prepareStatement(query);
	         pstmt.setInt(1, Integer.parseInt(_deptno));
	         pstmt.setString(2, _dname);
	         pstmt.setString(3, _loc);
	         pstmt.setInt(4, Integer.parseInt(_deptno));
	         
	         int n = pstmt.executeUpdate();
	         if (n == 1) {
	            System.out.println("데이터 수정 성공!!");
	         } else {
	            System.out.println("데이터 수정 실패!!");   
	         }
	         
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	      } finally {
	         try {
	            if(pstmt!=null) pstmt.close();
	            if(conn!=null) conn.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	            e2.printStackTrace();
	         }
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
				e2.printStackTrace();
			} finally {
				
			}
		}
		
		return list;
	}
}
