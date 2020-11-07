package kr.smhrd.myapp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.smhrd.model.MemberDAO;
import kr.smhrd.model.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO memberDAO;

	@RequestMapping("/list.do")
	public String memberList(Model model) {
		List<MemberVO> list = memberDAO.memberList();
		model.addAttribute("list",list);
		return "memberList";
		//포워딩
	}

	
	@RequestMapping("/insertForm.do")
	public String memberInsertForm() {
		
		return "member";
	} 
	
	@RequestMapping("/insert.do")
	public String memberInsert(MemberVO vo) {
		//System.out.println(vo.toString());
		 memberDAO.memberInsert(vo);
		// int cnt = memberDAO.memberInsert(vo); 따로 하지 않음.
		return "redirect:/list.do";
		//리다이렉트
	}
	
	
	
	@RequestMapping("/content.do")
	// public String memberContent(@RequestParam(num) int aaa) {  //변수 이름 다르게 받기
	public String memberContent(int num, Model model) {
		//System.out.println(num);
		MemberVO vo = memberDAO.memberContent(num);
		model.addAttribute("vo",vo);
		
		return "memberContent";
	}
	
	@RequestMapping("/delete.do")
	public String memberDelete(int num) {
		
		memberDAO.memberDelete(num);
		return "redirect:/list.do";
	}
	
	@RequestMapping("/update.do")
	public String memberUpdate(MemberVO vo) {
		memberDAO.memberUpdate(vo);
		return "redirect:/list.do";
	}
	

    @RequestMapping("/member.do")
    String showJoin() {
    	return "signup"; 
    }

	/*
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginProcess() {
		// get방식
		return "loginForm";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String loginProcess(MemberVO vo, HttpServletRequest request //세션을 만드려면) {
		//포스트방식 - 메소드 이름이 같을 수 있음.
		HttpSession session = request.getSession();
		return "redirect:/list.do";
	}
	*/
	
	
}
