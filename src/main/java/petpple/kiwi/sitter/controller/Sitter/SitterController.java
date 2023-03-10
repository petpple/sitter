package petpple.kiwi.sitter.controller.Sitter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SitterController {

	@RequestMapping("/sitter/sample")
	public String sitterSample()
	{
		return "sitter/sample";
	}

//	@RequestMapping("sitter/sitterMain")
//	public String sitterMain() {
//		return "sitter/sitterMain";
//	}

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

	@RequestMapping("sitter/sitterMyDrawl")
	public String sitterMyDrawl() {
		return "sitter/sitterMyDrawl";
	}

	@RequestMapping("sitter/sitterInfoUsvcWaiting")
	public String sitterInfoUsvcWaiting() {
		return "sitter/sitterInfoUsvcWaiting";
	}

	@RequestMapping("sitter/sitterInfoUsvcPast")
	public String sitterInfoUsvcPast() {
		return "sitter/sitterInfoUsvcPast";
	}

	@RequestMapping("sitter/sitterInfoVsvcPast")
	public String sitterInfoVsvcPast() {
		return "sitter/sitterInfoVsvcPast";
	}

	

	@RequestMapping("sitter/sitterInfoFsvcPast")
	public String sitterInfoFsvcPast() {
		return "sitter/sitterInfoFsvcPast";
	}

	@RequestMapping("sitter/sitterInfoFsvcWaiting")
	public String sitterInfoFsvcWaiting() {
		return "sitter/sitterInfoFsvcWaiting";
	}

	//-- 수정함	
	@RequestMapping("/sitter/sitterMyProfile")
	public String sitterMyProfile()
	{
		return "sitter/sitterMyProfile";
	}

	@RequestMapping("/sitter/sitterMyProfileUpdate")
	public String sitterMyProfileUpdate()
	{
		return "sitter/sitterMyProfileUpdate";
	}

	@RequestMapping("/sitter/sitterMyInfo")
	public String sitterMyInfo()
	{
		return "sitter/sitterMyInfo";
	}
	/*
	@RequestMapping("/sitter/sitterMyPet")
	public String sitterMyPet()
	{
		return "sitter/sitterMyPet";
	}

	
	@RequestMapping("/sitter/sitterMyPetInsert")
	public String sitterMyPetInsert()
	{
		return "sitter/sitterMyPetInsert";
	}

	@RequestMapping("/sitter/sitterMyPetUpdate")
	public String sitterMyPetUpdate()
	{
		return "sitter/sitterMyPetUpdate";
	}
	*/
}
