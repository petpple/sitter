package petpple.kiwi.sitter.controller.Sitter;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public String vsitterSide(Model model, HttpServletRequest request)
	{
		IVsitterMapper dao = SqlSession.getMapper(IVsitterMapper.class);

		HttpSession session = request.getSession();
	    String temId = (String)session.getAttribute("temId");

//		ArrayList<Vsitter> vsitterList = dao.currentPetsitting(temId);
		ArrayList<Vsitter> vsitterList = dao.currentPetsitting();

		model.addAttribute("waitingAccept", dao.waitingAccept(temId));

		model.addAttribute("sumPetsitting", dao.sumPetsitting());

		model.addAttribute("vsitterList", vsitterList);

		return "vsitter/vsitterSide";
	}

	
	
// 	중간 메인 화면
//	-------------- 방문 펫시터 메인페이지  ------------------

	@RequestMapping(value = "sitter/sitterMain")
	public String vSitterMain(ModelMap modelMap, HttpServletRequest request)
	{
		IVsitterMapper dao = SqlSession.getMapper(IVsitterMapper.class);

//		HttpSession session = request.getSession();
//	    String temId = (String)session.getAttribute("temId");

//		ArrayList<Vsitter> vsitterList = dao.currentPetsitting(temId);
		ArrayList<Vsitter> vsitterList = new ArrayList<>();

		modelMap.addAttribute("vsitterList", vsitterList);

		System.out.println(vsitterList);

		return "sitter/sitterMain";

	}



}
