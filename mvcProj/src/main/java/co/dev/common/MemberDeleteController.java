package co.dev.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.dev.service.MemberService;

public class MemberDeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String id = req.getParameter("id");
		MemberService service = MemberService.getInstance();
		service.deleteMember(id);
		Utils.forward(req, resp, "memberResult/memberDeleteOutput.jsp");
	}

}
