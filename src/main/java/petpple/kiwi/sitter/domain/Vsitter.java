package petpple.kiwi.sitter.domain;

import lombok.Data;

@Data
public class Vsitter
{
	// 방문 요청번호, 이름, 주소, 서비스시작일, 종료일, 펫시터 닉네임, 의뢰인 프로필
	private String id, temId, vid, name, addr, startDate, endDate, clientNickname
	, clientProfile, reqDate, totalPrice;

}
