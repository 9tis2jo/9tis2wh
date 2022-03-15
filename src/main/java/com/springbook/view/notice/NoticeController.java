package com.springbook.view.notice;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;


import com.springbook.biz.notice.NoticeService;
import com.springbook.biz.notice.NoticeVO;

@Controller
@SessionAttributes("notice")
public class NoticeController {
		
		@Autowired
		private NoticeService noticeService;
	
		//검색 조건 목록 항목 설정
		@ModelAttribute("conditionMap")
		public Map<String, String> searchCondition(){
			Map<String, String>conditionMap = new HashMap<String, String>();
			conditionMap.put("제목", "TITLE");
			conditionMap.put("내용", "CONTENT");
			return conditionMap;
		}
//		
//		//json으로 변환
//		@RequestMapping(value = "/dataTransform.do")
//		@ResponseBody
//		public List<BoardVO> dataTransform(BoardVO vo){
//			vo.setSearchCondition("TITLE");
//			vo.setSearchKeyword("");
//			List<BoardVO> boardList = boardService.getBoardList(vo);
//			return boardList;
//		}
	
		//등록
		@RequestMapping(value="/insertNotice.do")
		public String insertNotice(
			NoticeVO vo/* , BoardDAO boardDAO *//*커맨드 객체VO에 있는 파라미터 값을 그대로 불러온다*//*HttpServletRequest request*/) throws IllegalStateException, IOException {
			System.out.println("글 등록 처리");
			MultipartFile uploadFile = vo.getUploadFile();
			if(!uploadFile.isEmpty()) {
				String fileName = uploadFile.getOriginalFilename();
				uploadFile.transferTo(new File("C:\\upload\\" + fileName));
			}
//			boardDAO.insertBoard(vo);
			noticeService.insertNotice(vo);
			return "redirect:getNoticeList.do"; //리다이렉트 방식으로 이동
		}
		
		//수정
			@RequestMapping("/updateNotice.do")
			public String updateNotice(@ModelAttribute("notice")NoticeVO vo) {
				System.out.println("글 수정 처리");
				System.out.println("번호 :" + vo.getNNUM());
				System.out.println("제목 :" + vo.getNTITLE());
				System.out.println("작성자 :" + vo.getNID());
				System.out.println("내용 :" + vo.getNCON());
				System.out.println("등록일 :" + vo.getNDATE());
				System.out.println("조회수 :" + vo.getNCNT());
//				boardDAO.updateBoard(vo);
				noticeService.updateNotice(vo);
				return "redirect:getNoticeList.do";
			}
		//삭제	
			@RequestMapping("deleteNotice.do")
			public String deleteNotice(NoticeVO vo) {
				System.out.println("글 삭제 처리");
				
//				boardDAO.deleteBoard(vo);
				noticeService.deleteNotice(vo);
				return "redirect:getNoticeList.do";
			}
		//상세조회	
			@RequestMapping("/getNotice.do")
//			public ModelAndView getBoard(BoardVO vo, BoardDAO boardDAO, ModelAndView mav) {
			public String getNotice(NoticeVO vo/* , BoardDAO boardDAO */, Model model /*ModelAndView mav*/) {
				System.out.println("글 상세 조회 처리");
				
//				mav.addObject("board", boardDAO.getBoard(vo));
//				mav.setViewName("getBoard.jsp");
				model.addAttribute("notice", noticeService.getNotice(vo) /*boardDAO.getBoard(vo)*/);
				
//				return mav;
				return "notice-single.jsp";
			}
		//검색	
			@RequestMapping("/getNoticeList.do")
//			public ModelAndView getBoardList(BoardVO vo, BoardDAO boardDAO, ModelAndView mav) {
			public String getNoticeList(NoticeVO vo/* , BoardDAO boardDAO */, Model model /*ModelAndView mav*/) {
				System.out.println("글 목록 검색 처리");
				
//				mav.addObject("boardList", boardDAO.getBoardList(vo));
//				mav.setViewName("getBoardList.jsp");
				if(vo.getSearchCondition() == null) vo.setSearchCondition("TITLE");
				if(vo.getSearchKeyword() == null) vo.setSearchKeyword("");
				model.addAttribute("noticeList", noticeService.getNoticeList(vo) /*boardDAO.getBoardList(vo)*/);
				
//				return mav;
				return "notice.jsp";
			}
			
//			@RequestMapping("/getBoardList.do")
//			public ModelAndView getBoardList(
//					@RequestParam(value="searchCondition", defaultValue="TITLE", required=false) String condition,
//					@RequestParam(value="searchKeyword", defaultValue="", required=false) String keyword,
//					BoardVO vo, BoardDAO boardDAO, ModelAndView mav) {
//			
//				System.out.println("글 목록 검색 처리");
//				System.out.println("검색조건 :" + condition);
//				System.out.println("검색단어 :" + keyword);
//				
//				mav.addObject("boardList", boardDAO.getBoardList(vo));
//				mav.setViewName("getBoardList.jsp");
//				
//				return mav;
//			}

}
