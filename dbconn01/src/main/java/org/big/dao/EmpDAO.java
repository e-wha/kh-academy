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
	
	public void empInput(String _empno, String _ename, String _job, String _mgr, String _hiredate, String _sal, String _comm, String _deptno) {
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    
	    try {
	        // Connection 생성
	        conn = DriverManager.getConnection(url, userid, passwd);
	        
	        // 입력 값 검증
	        if (_empno.length() > 4 || Integer.parseInt(_empno) < 0) {
	            throw new Exception("사원번호(empno)는 4자리 숫자여야 합니다.");
	        }
	        if (_sal.length() > 8 || Integer.parseInt(_sal) < 0) {
	            throw new Exception("연봉(sal)은 8자리 숫자여야 합니다.");
	        }
	        if (_comm.length() > 8 || Integer.parseInt(_comm) < 0) {
	            throw new Exception("커미션(comm)은 8자리 숫자여야 합니다.");
	        }
	        if (_deptno.length() > 2 || Integer.parseInt(_deptno) < 0) {
	        	
	            throw new Exception("부서번호(deptno)는 2자리 숫자여야 합니다. " + _deptno);
	        }

	        // 날짜 형식 체크 (YYYY-MM-DD)
	        try {
	            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
	            sdf.setLenient(false); // lenient=false로 설정하여 날짜 형식 엄격히 체크
	            sdf.parse(_hiredate);  // 날짜 형식이 올바르지 않으면 예외 발생
	        } catch (java.text.ParseException e) {
	            throw new Exception("입사일(hiredate)의 형식이 잘못되었습니다. YYYY-MM-DD 형식으로 입력하세요.");
	        }

	        // 쿼리 작성
	        String query = "INSERT INTO emp(empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES(?, ?, ?, ?, TO_DATE(?, 'YYYY-MM-DD'), ?, ?, ?)";
	        pstmt = conn.prepareStatement(query);
	        
	        // 파라미터 바인딩
	        pstmt.setInt(1, Integer.parseInt(_empno));
	        pstmt.setString(2, _ename);
	        pstmt.setString(3, _job);
	        pstmt.setInt(4, Integer.parseInt(_mgr));
	        pstmt.setString(5, _hiredate);
	        pstmt.setInt(6, Integer.parseInt(_sal));
	        pstmt.setInt(7, Integer.parseInt(_comm));
	        pstmt.setInt(8, Integer.parseInt(_deptno));

	        // 실행
	        int n = pstmt.executeUpdate();
	        if (n == 1) {
	            System.out.println("데이터 입력 성공!!");
	        } else {
	            System.out.println("데이터 입력 실패!!");
	        }
	    } catch (Exception e) {
	        e.printStackTrace(); // 구체적인 오류 메시지 출력
	    } finally {
	        try {
	            if (pstmt != null) pstmt.close();
	            if (conn != null) conn.close();
	        } catch (Exception e2) {
	            e2.printStackTrace();
	        }
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
				String hiredate = rs.getString("hiredate");
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
