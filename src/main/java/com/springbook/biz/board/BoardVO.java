package com.springbook.biz.board;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private String bID;
	private int bPW;
	private int bNUM;
	private String bCT;
	private String bTITLE;
	private String bCON;
	private int bCNT;
	private Date bDATE;
	@JsonIgnore
	private String searchCondition;
	@JsonIgnore
	private String searchKeyword;
	@JsonIgnore
	private MultipartFile uploadFile;
	
	@Override
	public String toString() {
		return "BoardVO [bID=" + bID + ", bPW=" + bPW + ", bNUM=" + bNUM + ", bCT=" + bCT + ", bTITLE=" + bTITLE
				+ ", bCON=" + bCON + ", bCNT=" + bCNT + ", bDATE=" + bDATE + "]";
	}
	
	
}
