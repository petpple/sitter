package petpple.kiwi.sitter.controller.Sitter;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import petpple.kiwi.sitter.domain.pet.Pet;
import petpple.kiwi.sitter.repository.pet.IPetManage;
import petpple.kiwi.sitter.service.sitter.ImgUpload;

@Controller
public class SitterPetInsertController {

	@Autowired
	private SqlSession sqlSession;

	// -- 의뢰인 내 펫 관리
	@RequestMapping(value = "/sitter/sitterMyPet")
	public String sitterMyPet(ModelMap mav, HttpServletRequest request) {
		IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);
		HttpSession session = request.getSession();
		String temId = (String) session.getAttribute("temId");
		if (temId == null) {
			return "//sitter/sitterMain";
		}
		mav.addAttribute("list", daoIPetManage.getPet(temId));

		return "sitter/sitterMyPet";
	}

	// -- 의뢰인 내 펫 수정
	@RequestMapping(value = "/sitter/PetUpdate", method = RequestMethod.GET)
	public String sitterMyPetUpdate(ModelMap mav, @RequestParam("id") String id) {

		IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);

		Pet dto = daoIPetManage.search(id);

		mav.addAttribute("Pet", dto);
		return "sitter/sitterMyPetUpdate";

	}

	@RequestMapping(value = "/sitter/sitterMyPetUpdate", method = RequestMethod.GET)
	public String sitterMyPetUpdate(Pet dto) {
		IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);

		daoIPetManage.updatePet(dto);

		return "redirect:sitterMyPet";
	}

	// -- 의뢰인 내 펫 삭제
	@RequestMapping(value = "/sitter/sitterMyPetDelete", method = RequestMethod.GET)
	public String sitterMyPetDelete(String id) {
		IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);

		daoIPetManage.deletePet(id);

		return "redirect:sitterMyPet";
	}



	@RequestMapping(value = "/sitter/petInsert", method = RequestMethod.POST)
	public String sitterMyPetInsert(Pet dto, @RequestParam(value = "file") MultipartFile file,
			HttpServletRequest request) {
		MultipartFile file2= file;
		IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);
		HttpSession session = request.getSession();

		String temId = (String) session.getAttribute("temId");
		dto.setTemId(temId);
		if (temId == null) {
			return "//user/userMain";
		}
		daoIPetManage.insertPet(dto);
		String path = "C:\\Petpple\\member\\src\\main\\resources\\static\\images\\member\\pet\\";
		String path2 = "C:\\Petpple\\sitter\\src\\main\\resources\\static\\images\\member\\pet\\";
		String id = daoIPetManage.getPetId();
		String profile = new ImgUpload().uploadProfileImg(file, path,path2, id);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("profile", "\\images\\member\\pet\\" + profile);
		map.put("id", id);
		daoIPetManage.insertPetProfile(map);

		return "redirect:sitterMain";
	}

	/* 의뢰인 내 펫 등록(추가) 페이지 */
	@RequestMapping(value = "/sitter/sitterMyPetInsert")
	public String sitterMyPetInsert() {
		return "sitter/sitterMyPetInsert";
	}

}
