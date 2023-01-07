package petpple.kiwi.sitter.controller.Vsitter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VSitterController {

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
}
