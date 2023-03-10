package petpple.kiwi.sitter.service;

import java.util.List;

import org.springframework.stereotype.Service;

import petpple.kiwi.sitter.domain.Member;
import petpple.kiwi.sitter.repository.IMemberMapper;

@Service
public class MemberService {
	IMemberMapper memberMapper;
	
	public MemberService(IMemberMapper memberMapper)
	{
		this.memberMapper = memberMapper;
	}
	
	public List<Member> getMemberList()
	{
		return memberMapper.getMemberList();
	}
	
	public Member getMember(int id) {
        return memberMapper.getMember(id);
    }

    public int createMember(Member member) {
        return memberMapper.createMember(member);
    }

    public int updateMember(Member member) {
        return memberMapper.updateMember(member);
    }

    public int deleteMember(int id) {
        return memberMapper.deleteMember(id);
    }
}
