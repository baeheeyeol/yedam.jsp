package com.edu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.common.EmpDAO;

@WebServlet("/addMember")
public class AddMemberServ extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 사용자 user_name =user2& user_pass=1234&role=1
		resp.setContentType("text/html;charset=UTF-8");
		String name = req.getParameter("user_name");
		String pass = req.getParameter("user_pass");
		String role = req.getParameter("role");
		// DB입력
		// get: 수정, post: 입력.
		EmpDAO dao = new EmpDAO();
		if (req.getMethod().toUpperCase().equals("GET")) {
			dao.updateMember(name, pass, role);
			resp.getWriter().print("");
		} else {
			dao.insertMember(name, pass, role);
			resp.getWriter().print("");
		}
	}
}
