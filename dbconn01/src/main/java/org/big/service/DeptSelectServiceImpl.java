package org.big.service;

import java.util.ArrayList;

import org.big.dao.DeptDAO;
import org.big.dao.EmpDAO;
import org.big.dto.DeptDTO;
import org.big.dto.EmpDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeptSelectServiceImpl implements DeptService{
	@Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) {
        DeptDAO Deptdao = new DeptDAO();
        ArrayList<DeptDTO> Deptselect = Deptdao.select();
        req.setAttribute("deptSelect", Deptselect);
        EmpDAO Empdao = new EmpDAO();
        ArrayList<EmpDTO> Empselect = Empdao.select();
        req.setAttribute("empSelect", Empselect);
    }
	
	
}
