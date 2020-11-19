package kr.smhrd.myapp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.stream.Stream;
import java.util.zip.DataFormatException;

import javax.inject.Inject;
import javax.servlet.ServletException;
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

import kr.smhrd.model.AIoTVO;
import kr.smhrd.model.MemberDAO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO memberDAO;

	@Inject
	MemberService MemberService;
	/*
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
	*/
	
	@RequestMapping("/index2.do")
	public String iotList(Model model, AIoTVO ivo) {
		//System.out.println("컨트롤러"+ ivo);
		List<AIoTVO> list = null;

		try {
			list = memberDAO.IotList(ivo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("list",list);
		return "index2";
		
	}
	
	@RequestMapping("/login.do")
	public String login() {
		return "auth-login";
	}
	
	@RequestMapping("/auth_confirm.do")
	public String auth_confirm() {
		return "auth-confirm";
	} 
	
	@RequestMapping("/auth_confirm2.do")
	public String auth_confirm2() {
		return "auth-confirm2";
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
	/*
	@RequestMapping("/index2.do")
	public String index2() {
		
		return "index2";
	}
	*/
	
	@RequestMapping("/index3.do")
	public View index3() {
		return new InternalResourceView("/WEB-INF/view3/index3.html");
	}
	
	
	
	@RequestMapping("/index4.do")
	public String index4( Model model) {
		String ipa = null;
		try {
			// 접속 ip 보내기
			ipa=Inet4Address.getLocalHost().getHostAddress();
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		model.addAttribute("ipu", ipa);
		return "index4";
	}
	
	
	@RequestMapping("/index5.do")
	public String index5() {
		return "index5";
	}
	
	@RequestMapping("/index6.do")
	public String index6() {
		return "index6";
	}
	
	
	@RequestMapping("/index7.do")
	public String index7() {
		return "index7";
	}
	
	@RequestMapping("/index8.do")
	public String index8() {
		return "index8";
	}
	
	@RequestMapping("/profi.do")
	public String profi(Locale locale, Model model) {
		Date date = new Date(); 
		String ipa = null;
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//시간 가져오기
		String formattedDate = dateFormat.format(date); 
		model.addAttribute("serverTime", formattedDate );
		
		try {
			// 접속 ip 보내기
			ipa=Inet4Address.getLocalHost().getHostAddress();
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		model.addAttribute("ipu", ipa);
		return "profi";
	}
	

	
	@RequestMapping("/setting.do")
	public String setting() {
		return "setting";
	}
	
	@RequestMapping("/faq.do")
	public String fag() {
		return "faq";
	}
	
	@RequestMapping("/security.do")
	public String security() {
		return "security";
	}
	
	@RequestMapping("/notifica.do")
	public String notifica() {
		return "notifica";
	}
	
	
	@RequestMapping("/profile.do")
	public String profile() {
		return "profile";
	}
	
	@RequestMapping("/about.do")
	public View about() {
		return new InternalResourceView("/WEB-INF/view3/about.html");
	}
	
	@RequestMapping("/contact.do")
	public View contact() {
		return new InternalResourceView("/WEB-INF/view3/contact.html");
	}
	
	@RequestMapping("/main_index.do")
	public View main_index() {
		return new InternalResourceView("/WEB-INF/view3/index.html");
	}
	
	@RequestMapping("/services.do")
	public View services() {
		return new InternalResourceView("/WEB-INF/view3/services.html");
	}
	
	@RequestMapping("/single_project.do")
	public View single_project() {
		return new InternalResourceView("/WEB-INF/view3/single-project.html");
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
	
	@RequestMapping("/iotinsert.do")
	public String Aiotinsert(AIoTVO ivo) {
		try {
			memberDAO.AIoTinsert(ivo);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/index2.do";
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
			// TODO Auto-generated catch b1lock
			e.printStackTrace();
		}
		return "redirect:/profi.do";
	}
	
	@RequestMapping("/loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) //세션을 만드려면 
		{
		
		boolean result = MemberService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		//System.out.println("좀 들어와라");
		try {
			if (result == true) { // 로그인 성공
				mav.setViewName("index4");
				mav.addObject("msg", "success");
				//System.out.println("로그인 되냐?");

			} else { // 로그인 실패 login 페이지로 이동
				mav.setViewName("auth-login");
				mav.addObject("msg", "failure");
				//System.out.println("로그인 실패햇니?");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
		}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		MemberService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("auth-login");
		mav.addObject("msg","logout");
		return mav;
		
	}
	
	@RequestMapping("/flask.do")
	public String flask(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException{
		
		String id = request.getParameter("id");
		String url = "http://localhost:5000/myapp/p_flask.do?id="+id;
		String line = null;
		//Stream<String> line = null;
		URL u;
		try {
			u = new URL(url);
			HttpURLConnection conn = (HttpURLConnection) u.openConnection();
			conn.setRequestMethod("POST");
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			

			//while ((line = br.readLine()) != null) {
			while ((line = br.readLine()) != null) {
				System.out.println(line);
				break;
			}

			conn.disconnect();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//line = line.substring(line.indexOf("."));
		
		model.addAttribute("result",line);
		return "index5";
	}
	
	
	
}
