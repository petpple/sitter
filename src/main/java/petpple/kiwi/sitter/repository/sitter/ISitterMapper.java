package petpple.kiwi.sitter.repository.sitter;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.sitter.domain.sitter.Sitter;

@Mapper
public interface ISitterMapper {

	public int sitterLogin(Sitter sitter);
	
	// public String tmpMemberId(String id, String pw);

	public String tmpMemberId(Sitter sitter);
	
}
