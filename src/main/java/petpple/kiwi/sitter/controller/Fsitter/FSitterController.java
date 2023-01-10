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
	
	@RequestMapping("/fsitter/fsitterMyProfile")
	public String fsitterMyProfile()
	{
		return "fsitter/fsitterMyProfile";
	}
	
	@RequestMapping("/fsitter/fsitterMyProfileUpdate")
	public String fsitterMyProfileUpdate()
	{
		return "fsitter/fsitterMyProfileUpdate";
	}
	
	@RequestMapping("/fsitter/fsitterMyInfo")
	public String fsitterMyInfo()
	{
		return "fsitter/fsitterMyInfo";
	}
	
	@RequestMapping("/fsitter/fsitterMyPet")
	public String fsitterMyPet()
	{
		return "fsitter/fsitterMyPet";
	}
	
	@RequestMapping("/fsitter/fsitterMyPetInsert")
	public String fsitterMyPetInsert()
	{
		return "fsitter/fsitterMyPetInsert";
	}
	
	@RequestMapping("/fsitter/fsitterMyPetUpdate")
	public String fsitterMyPetUpdate()
	{
		return "fsitter/fsitterMyPetUpdate";
	}
	
	@RequestMapping("/fsitter/fsitterPetSitterList")
	public String fsitterPetSitterList()
	{
		return "fsitter/fsitterPetSitterList";
	}
	
	@RequestMapping("/fsitter/fsitterCal")
	public String fsitterCal()
	{
		return "fsitter/fsitterCal";
	}
	
}
