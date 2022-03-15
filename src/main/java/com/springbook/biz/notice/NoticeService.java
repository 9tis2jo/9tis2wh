package com.springbook.biz.notice;

import java.util.List;

public interface NoticeService {
		//글 등록
		public void insertNotice(NoticeVO vo);
		
		// 글 수정
		public void updateNotice(NoticeVO vo);

		// 글 삭제
		public void deleteNotice(NoticeVO vo);

		// 글 상세 조회
		NoticeVO getNotice(NoticeVO vo);

		// 글 목록 조회
		List<NoticeVO> getNoticeList(NoticeVO vo);
		
}
