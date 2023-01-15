package petpple.kiwi.sitter.service.sitter;

import org.springframework.stereotype.Service;

import petpple.kiwi.sitter.domain.sitter.Sitter;
import petpple.kiwi.sitter.repository.sitter.ISitterMapper;

@Service
public class SitterService {

	ISitterMapper sitterMapper;
	
	public SitterService(ISitterMapper sitterMapper)
	{
		this.sitterMapper = sitterMapper;
	}
	
	public int sitterLogin(Sitter sitter) 
	{
		return sitterMapper.sitterLogin(sitter);
	}
	
	public String tmpMemberId(Sitter sitter) 
	{
		return sitterMapper.tmpMemberId(sitter);
	}

}
