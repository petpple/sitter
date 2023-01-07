package petpple.kiwi.sitter.controller.Sitter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SitterController {

	@RequestMapping("/")
	public String sitterMain()
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
}
