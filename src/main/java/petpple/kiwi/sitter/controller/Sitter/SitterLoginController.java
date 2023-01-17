package petpple.kiwi.sitter.controller.Sitter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import petpple.kiwi.sitter.domain.sitter.Sitter;
import petpple.kiwi.sitter.repository.sitter.ISitterMapper;

@Controller
public class SitterLoginController {

	@Autowired 
	private SqlSession sqlSession; 
	
	//------------------------시터 로그인 폼 ------------------------//
	@RequestMapping(value = "/")
	public String login()
	{
		return "sitter/sitterLogin";
	}
	
	@RequestMapping(value = "/sitter/sitterLogin")
	public String sitterLogin()
	{
		return "sitter/sitterLogin";
	}
	
	//------------------------시터 로그인 시도------------------------
	@RequestMapping(value = "/sitter/loginAction", method = RequestMethod.POST)
	public String sitterLoginAction(@RequestParam("userId") String id, @RequestParam("userPw") String pw, HttpServletRequest request)
	{
		ISitterMapper dao = sqlSession.getMapper(ISitterMapper.class);
	
		HttpSession session = request.getSession();
		
		Sitter temp = new Sitter();
		temp.setId(id);
		temp.setPw(pw);
		int str = 0;

		str = dao.sitterLogin(temp);
		String temId = dao.tmpMemberId(temp);
		System.out.println(temId);

		  if (str != 0)
		  {
			  session.setAttribute("temId",temId);
			  return "/sitter/sitterMain";
		  }
		  else
		  { 
			  session.setAttribute("temId", null);
			  return "redirect:/sitter/sitterLogin";
		  }
	}
	
	
//	@RequestMapping(value = "user/loginAction", method = RequestMethod.POST)
//	public String userLogin(@RequestParam("userId") String id, @RequestParam("userPw") String pw, Model model)
//	{
//		
//		UserMapper dao = sqlSession.getMapper(UserMapper.class);
//		
//		HttpSession session = ((HttpServletRequest) model).getSession();
//		
//		int str = dao.userLogin(id, pw);
//		
//		model.addAttribute("id", id);
//		model.addAttribute("pw", pw);
//		
//		if (str != 0 ) {
//			session.setAttribute("signIn", dao.tmpMemberId(id, pw));
//			return "redirect:/userMain";
//		} else {
//			session.setAttribute("signIn", null);
//			return "redirect:/userLogin";
//		}
//		
//		//System.out.println(str);
//		
//		
//
//	}
	//------------------------유저 로그인 종료------------------------//

	//------------------------시터 로그아웃------------------------//
	@GetMapping("/logout")
	public String logout(HttpSession session) 
	{
		// 세션을 삭제한다.
		// HttpSession session = request.getSession(false);
		session.invalidate();
		
		return "redirect:/";
	}
	
}
