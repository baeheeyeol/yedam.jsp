package co.dev.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.dev.vo.MemberVO;
import co.dev.service.MemberService;

// 수정 컨트롤.
public class MemberUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		// 파라메터
		String id = req.getParameter("id");
		String pw = req.getParameter("passwd");
		String nm = req.getParameter("name");
		String em = req.getParameter("mail");
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setMail(em);
		vo.setName(nm);
		vo.setPasswd(pw);
	
		MemberService service =MemberService.getInstance();
		service.modifyMember(vo);
		
		req.setAttribute("member", vo);
		Utils.forward(req, resp, "memberResult/memberUpdateOutput.jsp");

	}

}
