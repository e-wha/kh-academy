package org.big.dto;

import java.util.Date;

public class EmpDTO {
	private int empno;
	private String ename;
	private String job;
	private int mgr;
	private Date hiredate;
	private int sal;
	private int comm;
	private int deptno;
	
	public EmpDTO(int empno, String ename, String job, int mgr, Date hiredate, int sal, int comm, int deptno) {
		this.empno = empno;
		this.ename = ename;
		this.job = job;
		this.mgr = mgr;
		this.hiredate = hiredate;
		this.sal = sal;
		this.comm = comm;
		this.deptno = deptno;
	}
	
	public int getempno() {
		return empno;
	}
	
	public void setempno(int empno) {
		this.empno = empno;
	}
	
	public String getename() {
		return ename;
	}
	
	public void setename(String ename) {
		this.ename = ename;
	}
	
	public String getjob() {
		return job;
	}
	
	public void setjob(String job) {
		this.job = job;
	}
	
	public int getmgr() {
		return mgr;
	}
	
	public void setmgr(int mgr) {
		this.mgr = mgr;
	}
	
	public Date gethiredate() {
		return hiredate;
	}
	
	public void sethiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	
	public int getsal() {
		return sal;
	}
	
	public void setsal(int sal) {
		this.sal = sal;
	}
	
	public int getcomm() {
		return comm;
	}
	
	public void setcomm(int comm) {
		this.comm = comm;
	}
	
	public int getdeptno() {
		return deptno;
	}
	
	public void setdeptno(int deptno) {
		this.deptno = deptno;
	}
}
