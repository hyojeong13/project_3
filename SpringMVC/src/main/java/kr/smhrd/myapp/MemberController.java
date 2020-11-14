package kr.smhrd.myapp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.InternalResourceView;

import kr.smhrd.model.MemberDAO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO memberDAO;

	@Inject
	MemberService MemberService;
	
	@RequestMapping("/list.do")
	public String memberList(Model model) {
		List<MemberVO> list = null;
		try {
			list = memberDAO.memberList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("list",list);
		return "memberList";
		//포워딩
	}
	@RequestMapping("/login.do")
	public String login() {
		return "auth-login";
	}
	
	@RequestMapping("/insertForm.do")
	public String memberInsertForm() {
		return "auth-register";
	} 
	
	
	@RequestMapping("/loginForm.do")
	public String memberLoginForm() {
		return "auth-login";
	} 

	@RequestMapping("/index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/index2.do")
	public String index2() {
		return "index2";
	}
	
	@RequestMapping("/index3.do")
	public View index3() {
		return new InternalResourceView("/WEB-INF/view3/index3.html");
	}
	
	
	
	@RequestMapping("/index4.do")
	public String index4() {
		return "index4";
	}
	
	@RequestMapping("/insert.do")
	public String memberInsert(MemberVO vo) {
		//System.out.println(vo.toString());
		//System.out.println("들어오니?");
		 try {
			memberDAO.memberInsert(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// int cnt = memberDAO.memberInsert(vo); 따로 하지 않음.
		return "redirect:/loginForm.do";
		//리다이렉트
	}
	
	
	
	@RequestMapping("/content.do")
	// public String memberContent(@RequestParam(num) int aaa) {  //변수 이름 다르게 받기
	public String memberContent(int num, Model model) {
		//System.out.println(num);
		MemberVO vo = null;
		try {
			vo = memberDAO.memberContent(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("vo",vo);
		
		return "memberContent";
	}
	
	@RequestMapping("/delete.do")
	public String memberDelete(int num) {
		
		try {
			memberDAO.memberDelete(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/list.do";
	}
	
	@RequestMapping("/update.do")
	public String memberUpdate(MemberVO vo) {
		try {
			memberDAO.memberUpdate(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/list.do";
	}
	
	@RequestMapping("/loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) //세션을 만드려면 
		{

		boolean result = MemberService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		
		if (result == true) { //로그인 성공
			mav.setViewName("index4");
			mav.addObject("msg", "success");
			
		}else { //로그인 실패 login 페이지로 이동
			mav.setViewName("auth-login");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	
}
