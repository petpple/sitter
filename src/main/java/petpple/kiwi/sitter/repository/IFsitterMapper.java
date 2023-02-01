package petpple.kiwi.sitter.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.sitter.domain.Fsitter;

@Mapper
public interface IFsitterMapper
{
	public Fsitter getFsitter(int id);

	public List<Fsitter> getFsitter();

	public int getCount();

	public int createFsitter(Fsitter fsitter);

	public int updateFsitter(Fsitter fsitter);

	public int deleteFsitter(int id);
	
	public String allowId(String temId);
	
}
