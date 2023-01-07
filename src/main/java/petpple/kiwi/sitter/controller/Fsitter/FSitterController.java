package petpple.kiwi.sitter.controller.Fsitter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FSitterController {

	@RequestMapping("/fsitter/index")
	public String fsitterIndex()
	{
		return "fsitter/index";
	}
	
	@RequestMapping("/fsitter/sample")
	public String fsitterSample()
	{
		return "fsitter/sample";
	}
}
