package petpple.kiwi.sitter.controller.Sitter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SitterController {

	@RequestMapping("/")
	public String sitter()
	{
		return "sitter/index";
	}
	
	@RequestMapping("/sitter/index")
	public String sitterIndex()
	{
		return "sitter/index";
	}
	
	@RequestMapping("/sitter/sample")
	public String sitterSample()
	{
		return "sitter/sample";
	}
	
	@RequestMapping("sitter/sitterMain")
	public String sitterMain() {
		return "sitter/sitterMain";
	}

	@RequestMapping("sitter/sitterCal")
	public String sitterSideCal() {
		return "sitter/sitterCal";
	}

	@RequestMapping("sitter/sitterDiaryForm")
	public String sitterDiaryForm() {
		return "sitter/sitterDiaryForm";
	}

	@RequestMapping("sitter/sitterDiaryWritten")
	public String sitterDiary() {
		return "sitter/sitterDiaryWritten";
	}

	@RequestMapping("sitter/sitterDiaryPetChoice")
	public String sitterDiaryPetChoice() {
		return "sitter/sitterDiaryPetChoice";
	}

	@RequestMapping("sitter/sitterMyBank")
	public String sitterMyBank() {
		return "sitter/sitterMyBank";
	}

	@RequestMapping("sitter/sitterMySide")
	public String sitterMySide() {
		return "sitter/sitterMySide";
	}

	@RequestMapping("sitter/sitterMyDrawl")
	public String sitterMyDrawl() {
		return "sitter/sitterMyDrawl";
	}
	
	@RequestMapping("sitter/Test2")
	public String sitterTest2() {
		return "sitter/Test2";
	}
}
