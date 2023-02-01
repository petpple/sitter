package petpple.kiwi.sitter.domain;

import lombok.Data;

@Data
public class Fsitter
{
	// 위탁펫시터 신고번호, 위탁펫시터 거주지 사진 123,가구원 흡연 여부, 거주지 유형, 거주지 규모, 위탁 프로필 공개 일자, 펫시터 승인번호(id)
	private String fsitId, resImg1, resImg2, resImg3, fsitPubDate, resType, resSize, smoking, allowId ;
}
