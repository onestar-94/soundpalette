package sound.palette.cotroller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sound.palette.common.CommandMap;
import sound.palette.service.LoginService;

@Controller
public class LoginController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "loginService")
	private LoginService loginService;

	@RequestMapping(value = "/main")
	public ModelAndView hello(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/main/main");

		return mv;
	}

	// 로그인 폼
	@RequestMapping(value = "/loginForm")
	public ModelAndView loginForm(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/login/loginForm");

		return mv;
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(CommandMap commandMap, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		String message = "";

		Map<String, Object> result = loginService.SelectInfo(commandMap.getMap());
		Map<String, Object> check = loginService.IdCheck(commandMap.getMap());
		Map<String, Object> result01 = loginService.PwCheck(commandMap.getMap());


		System.out.println("result=" + result);
		System.out.println("check=" + check);
		System.out.println("result01=" + result01);
		System.out.println("-----------------------");

		mv.addObject("result", result);

		// 아이디 존재여부 확인
		if (result == null && (!commandMap.get("MEM_EMAIL").equals(""))) {

			message = "없는 회원 입니다.";
			mv.addObject("message", message);


			mv.setViewName("login/loginForm");
		} else if (result != null) { 
			// 비밀번호 일치시 로그인 성공
			if (result.get("MEM_PW").equals(commandMap.get("MEM_PW")) && result.get("MEM_DEL").equals("N")) {

				session.setAttribute("MEM_EMAIL", result.get("MEM_EMAIL"));
				session.setAttribute("MEM_NUM", result.get("MEM_NUM"));
				session.setAttribute("MEM_NICK", result.get("MEM_NICK"));
				session.setAttribute("MEM_AUTH", result.get("MEM_AUTH"));
				session.setAttribute("MEM_NAME", result.get("MEM_NAME"));
				session.setAttribute("MEM_PW", result.get("MEM_PW"));
				session.setAttribute("MEM_BIRTH", result.get("MEM_BIRTH"));
				session.setAttribute("IMG_NAME", result.get("IMG_NAME"));
				
				System.out.println(result.get("IMG_NAME"));
				mv.setViewName("main/main");
			} else {

				message = "비밀번호가 일치하지 않습니다.";
				mv.addObject("message", message);
				mv.setViewName("login/loginForm");


			}
		}
		// 비밀번호 일치 여부 확인
		if (result01 != null) {
			if ((!result01.get("MEM_PW").equals(commandMap.get("MEM_PW"))) && (!commandMap.get("MEM_PW").equals(""))) {
				message = "비밀번호가 일치하지 않습니다.";
				mv.addObject("message", message);
				mv.setViewName("login/loginForm");

			}
		}
		
		// 탈퇴 여부 확인
		if(result != null) {
			if(result.get("MEM_DEL").equals("Y")) {
				message = "탈퇴된 회원입니다.";
				System.out.println(message);
				mv.addObject("message", message);
				mv.setViewName("login/loginForm");

				
			}
		}
		
		// 입력받은 비밀번호가 공백일때 메세지(없는 회원입니다) 출력 안 함
		if(commandMap.get("MEM_PW").equals("")) {
			mv.addObject("message", null);
		}

		return mv;
	}

	// 로그아웃
	@RequestMapping(value = "/logout")
	public ModelAndView logout(CommandMap commandMap, HttpServletResponse response, HttpServletRequest request)
			throws Exception {
		ModelAndView mv = new ModelAndView("/login/loginForm");

		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		return mv;
	}

	// EMAIL 찾기
	@RequestMapping(value = "/findId")
	public ModelAndView findId(CommandMap commandMap, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("/login/findIdAccountForm");

		return mv;
	}

	// 아이디 찾기 결과
	@RequestMapping(value = "/findIdResult", method = RequestMethod.POST)
	public ModelAndView findIdResult(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/login/findIdAccountFormresult");

		List<Map<String, Object>> list = loginService.findId(commandMap.getMap());

		System.out.println(list);
		mv.addObject("list", list);

		return mv;
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/findPw")
	public ModelAndView findPw(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/login/findPwAccountForm");

		return mv;
	}

	// 비밀번호 찾기 결과
	@RequestMapping(value = "/findPwResult", method = RequestMethod.POST)
	public ModelAndView findPwResult(CommandMap commandMap) throws Exception {

		ModelAndView mv = new ModelAndView("/login/findPwAccountFormresult");
		List<Map<String, Object>> list = loginService.findPw(commandMap.getMap());
		System.out.println(list);
		mv.addObject("list", list);

		return mv;
	}

}
