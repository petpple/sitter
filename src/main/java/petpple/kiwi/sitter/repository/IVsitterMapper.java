package petpple.kiwi.sitter.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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
	public int waitingAcceptance();

	// 방문서비스 누적 펫시팅 횟수(펫시팅 정보)
	public int sumPetsitting();

	// 위탁 서비스 수락 대기중(펫시팅 정보)
	public int waitingFacceptance();

	// 위탁 서비스 누적 펫시팅 횟수(펫시팅 정보)
	public int sumFpetsitting();

	public ArrayList<Vsitter> currentPetsitting();




}
