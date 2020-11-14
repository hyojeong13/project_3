package kr.smhrd.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;

import kr.smhrd.model.MemberDAO;
import kr.smhrd.model.MemberVO;

@Repository
public class MemberServiceImpl implements MemberService{

	
	@Inject
	MemberDAO memberDao;
	
	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = memberDao.loginCheck(vo);
		if (result) {
			MemberVO vo2 = viewMember(vo);
			session.setAttribute("id",vo2.getId());
			session.setAttribute("lastname", vo2.getLastname());
		}
		
		return result;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		
		return memberDao.viewMember(vo);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
		
	}

	
	
}