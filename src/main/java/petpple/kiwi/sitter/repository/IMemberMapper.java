package petpple.kiwi.sitter.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.sitter.domain.Member;

@Mapper
public interface IMemberMapper
{
	public Member getMember(int id);

	public List<Member> getMemberList();

	public int getCount();

	public int createMember(Member member);

	public int updateMember(Member member);

	public int deleteMember(int id);
}
