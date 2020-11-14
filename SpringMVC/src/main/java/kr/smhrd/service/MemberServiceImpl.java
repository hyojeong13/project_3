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
		System.out.println(result);
		if (result) {
			MemberVO vo2 = viewMember(vo);
			session.setAttribute("id",vo2.getId());
			session.setAttribute("lastname", vo2.getLastname());
			System.out.println("서비스 들어와 말아 들어와 말아");
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
		// 세션 없애버리기
	}

	
	
}
