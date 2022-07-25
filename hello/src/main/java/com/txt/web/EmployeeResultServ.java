package com.txt.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.txt.common.Employee;

@WebServlet("/empResult")
public class EmployeeResultServ extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Employee> list = (List<Employee>) req.getAttribute("data"); // list
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out =resp.getWriter();
		for(Employee emp :list) {
			
			out.print("<br>사원번호: " + emp.getEmployeeId() + ",사원이름: " +emp.getFirstName()+", 이메일: " +emp.getEmail());
		}
	}
}
