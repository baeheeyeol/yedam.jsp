package co.edu.common;

public class MemberService {
	// 싱글톤
	private static MemberService instance = new MemberService();
	private MemberService() {
		
	}
	public static MemberService getInstance() {
		return instance;
	}
	MemberDAO dao = new MemberDAO();

	// 입력기능. 삭제.
	public void memberAdd(MemberVO vo) {
		dao.insertMember(vo);
	}
}
