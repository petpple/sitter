package petpple.kiwi.sitter.controller.Vsitter;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import petpple.kiwi.sitter.domain.Vsitter;
import petpple.kiwi.sitter.repository.IVsitterMapper;
import petpple.kiwi.sitter.repository.sitter.ISitterMapper;

@Controller
public class VSitterController {

	@Autowired 
	private SqlSession sqlSession; 
	
	@RequestMapping("/vsitter/index")
	public String vsitterIndex()
	{
		return "vsitter/index";
	}

	@RequestMapping("/vsitter/sample")
	public String vsitterSample()
	{
		return "vsitter/sample";
	}
	
	@RequestMapping("sitter/sitterInfoVsvcWaiting")
	public String sitterInfoVsvcWaiting(Model model, HttpServletRequest request) {
		
		IVsitterMapper dao = sqlSession.getMapper(IVsitterMapper.class);
		HttpSession session = request.getSession();
		

		String temId = (String) session.getAttribute("temId");

		if (temId == null) {
			return "//";
		}
		
		ArrayList<Vsitter> list= dao.requestVisitService(temId);
		model.addAttribute("list", list);
		return "sitter/sitterInfoVsvcWaiting";
	}
//	@RequestMapping("vsitter/vsitterSide")
//	public String vsitterSide() {
//		return "vsitter/vsitterSide";
//	}

	@RequestMapping("sitter/VSvcreservation")
	public String sitterVSvcreservation(@RequestParam("vId") String vId) {
		
		IVsitterMapper dao = sqlSession.getMapper(IVsitterMapper.class);
		dao.reserveVisit(vId);
		
		return "sitter/sitterMain";
	}
}
