package petpple.kiwi.sitter.controller.Sitter;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import petpple.kiwi.sitter.domain.Vsitter;
import petpple.kiwi.sitter.repository.IVsitterMapper;

@Controller
public class SitterMainController
{
	@Autowired
	private SqlSession SqlSession;

	@GetMapping(value =  "vsitter/vsitterSide")
	public String vsitterSide(Model model)
	{
		IVsitterMapper dao = SqlSession.getMapper(IVsitterMapper.class);

		model.addAttribute("result1", dao.waitingAcceptance());

		model.addAttribute("result2", dao.sumPetsitting());

		model.addAttribute("result3",dao.waitingFacceptance());

		model.addAttribute("result4",dao.sumFpetsitting());

		ArrayList<Vsitter> vsitterList = dao.currentPetsitting();

		model.addAttribute("vsitterList", vsitterList);


		return "vsitter/vsitterSide";
	}

//	-------------- 방문 펫시터 메인페이지  ------------------

	@RequestMapping(value = "")
	public String vSitterMain(ModelMap modelMap)
	{
		return null;

	}

	/*
	// 중간 메인 화면
	@RequestMapping(value = "/member/memberMain")
//	public String memberMain(ModelMap modelMap, HttpServletRequest req, HttpServletResponse resp, HttpSession session)
	{
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);

		ArrayList<Member> memberList = dao.currentPetsitting();

		ArrayList<Member> memberIng = dao.comfirmWaiting();

		modelMap.addAttribute("memberList", memberList);

		modelMap.addAttribute("memberIng", memberIng);

//		System.out.println(memberIng);
//		System.out.println(dao.currentPetsitting());

		return "member/memberMain";
	}
	*/


}
