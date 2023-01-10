package petpple.kiwi.sitter.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.sitter.domain.Member;

@Mapper
public interface MemberMapper {
	Member getMember(int id);

    List<Member> getMemberList();
    
    int getCount();

    int createMember(Member member);

    int updateMember(Member member);

    int deleteMember(int id);
}
