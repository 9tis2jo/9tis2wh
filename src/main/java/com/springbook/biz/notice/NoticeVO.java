package com.springbook.biz.notice;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVO {
	private String nID;
	private int nPW;
	private int nNUM;
	private String nCT;
	private String nTITLE;
	private String nCON;
	private int nCNT;
	private Date nDATE;
	@JsonIgnore
	private String searchCondition;
	@JsonIgnore
	private String searchKeyword;
	@JsonIgnore
	private MultipartFile uploadFile;
	
	
	
	
}
