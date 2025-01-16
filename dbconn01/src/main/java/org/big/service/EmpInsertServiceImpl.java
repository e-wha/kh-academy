package org.big.service;

import org.big.dao.DeptDAO;
import org.big.dao.EmpDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class EmpInsertServiceImpl implements DeptService{
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String empno = req.getParameter("empno");
		String ename = req.getParameter("ename");
		String job = req.getParameter("job");
		String mgr = req.getParameter("mgr");
		String hiredate = req.getParameter("hiredate");
		String sal = req.getParameter("sal");
		String comm = req.getParameter("empno");
		String deptno = req.getParameter("deptno");
		
		EmpDAO dao = new EmpDAO();
		dao.empInput(empno, ename, job, mgr, hiredate, sal, comm, deptno);

	}
	
}
