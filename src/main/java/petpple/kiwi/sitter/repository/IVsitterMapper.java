package petpple.kiwi.sitter.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import petpple.kiwi.sitter.domain.Vsitter;

@Mapper
public interface IVsitterMapper
{
	public Vsitter getVsitter(int id);

	public List<Vsitter> getVsitter();

	public int getCount();

	public int createVsitter(Vsitter vsitter);

	public int updateVsitter(Vsitter vsitter);

	public int deleteVsitter(int id);

	// 방문서비스 수락 대기중(펫시팅 정보)
	public int waitingAccept(@Param("temId") String temId);

	// 방문서비스 누적 펫시팅 횟수(펫시팅 정보)
	public int sumPetsitting();

	// 위탁 서비스 수락 대기중(펫시팅 정보)
	public int waitingFacceptance();

	// 위탁 서비스 누적 펫시팅 횟수(펫시팅 정보)
	public int sumFpetsitting();
	
	public ArrayList<Vsitter> requestVisitService(@Param("temId") String temId);
	// 세션작업을 완료 한 후 수정
//	public ArrayList<Vsitter> currentPetsitting(@Param("temId") String temId);
	public ArrayList<Vsitter> currentPetsitting();

	public int reserveVisit(@Param("vId") String vId);


}
