package kr.smhrd.model;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface MemberDAO {

	public List<MemberVO> memberList() throws Exception;
	public int memberInsert(MemberVO vo) throws Exception;
	//public int memberLogin(MemberVO vo)throws Exception;
	public int memberIndex(MemberVO vo)throws Exception;
	public MemberVO memberContent(int num)throws Exception;
	public int memberDelete(int num)throws Exception;
	public int memberUpdate(MemberVO vo)throws Exception;
	
	public boolean loginCheck(MemberVO vo);
	public MemberVO viewMember(MemberVO vo);
	public void logout(HttpSession session);
}
