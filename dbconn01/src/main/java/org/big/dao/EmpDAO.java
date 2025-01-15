package org.big.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import org.big.dto.EmpDTO;

public class EmpDAO {
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "scott";
	String passwd = "1111";
	
	public EmpDAO() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			
		}
	}
	
	public ArrayList<EmpDTO> select(){
		ArrayList<EmpDTO> list = new ArrayList<EmpDTO> ();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userid, passwd);
			String query = "select * from emp";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				int mgr = rs.getInt("mgr");
				Date hiredate = rs.getDate("hiredate");
				int sal = rs.getInt("sal");
				int comm = rs.getInt("comm");
				int deptno = rs.getInt("deptno");
				
				EmpDTO data = new EmpDTO(empno, ename, job, mgr, hiredate, sal, comm, deptno);
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
