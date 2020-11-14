package kr.smhrd.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.smhrd.model.MemberVO;

@Service
public interface MemberService {

	//로그인 체크
	public boolean loginCheck(MemberVO vo, HttpSession session);
	
	//로그인 정보
	public MemberVO viewMember(MemberVO vo);
	
	//로그아웃
	public void logout(HttpSession session);
}
