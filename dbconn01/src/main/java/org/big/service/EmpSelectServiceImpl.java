package org.big.service;

import java.util.ArrayList;

import org.big.dao.EmpDAO;
import org.big.dto.EmpDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class EmpSelectServiceImpl implements DeptService{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		EmpDAO dao = new EmpDAO();
        ArrayList<EmpDTO> select = dao.select();
        req.setAttribute("empSelect", select);
		
	}
}
