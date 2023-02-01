package petpple.kiwi.sitter.controller.Fsitter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import petpple.kiwi.sitter.domain.Fsitter;
import petpple.kiwi.sitter.repository.IFsitterMapper;
import petpple.kiwi.sitter.service.sitter.ImgUpload;

@Controller
public class FSitterController {
	
	@Autowired 
	private SqlSession sqlSession; 

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


	@RequestMapping("/fsitter/fsitterMySide")
	public String sitterMySide()
	{
		return "fsitter/fsitterMySide";
	}
	
	/* 위탁펫시터 신고 폼 */
	@RequestMapping("/sitter/fsitterApplyForm")
	public String fsitterApplyForm() {
		return "fsitter/fsitterApplyForm";
	}
	
	// 위탁 펫시터 신고
	@RequestMapping("/sitter/fsitterApply.action")
	public String fsitterApply(Fsitter dto, @RequestParam(value="file") MultipartFile[] file, HttpServletRequest request)
	{
		IFsitterMapper dao = sqlSession.getMapper(IFsitterMapper.class);
		
		// 세션값 얻어오기 
		HttpSession session = request.getSession();
		String temId = (String)session.getAttribute("temId");
		
		// 펫시터 승인 번호 값 담기
		String allowId = dao.allowId(temId);
		dto.setAllowId(allowId);
		
		String path = "C:\\Petpple\\sitter\\src\\main\\resources\\static\\images\\sitter\\resImg\\"; 
		String path2 = "C:\\Petpple\\member\\src\\main\\resources\\static\\images\\sitter\\resImg\\";
		
		List<String> resImg = new ImgUpload().uploadImages(file,path,path2,temId);
		
		// List에 담긴 값들 
		dto.setResImg1("\\images\\sitter\\resImg\\"+resImg.get(0));
		dto.setResImg2("\\images\\sitter\\resImg\\"+resImg.get(1));
		dto.setResImg3("\\images\\sitter\\resImg\\"+resImg.get(2));
		
		dao.createFsitter(dto);
		
		return "redirect:sitterMain";
	}
	
}
