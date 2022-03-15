package com.springbook.biz.product;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private int pID;
	private String mID;
	private String pName;
	private int pPrice;
	private String pCT;
	private Date pRDATE; 
	private Date pTDATE;
	private String pINFO;
	private int pCNT;
	private String pIMG;
	private int pSTATE;
	private int pTRANS; 
	private String pTAG;

	private MultipartFile uploadFile;
	@Override
	public String toString() {
		return "ProductVO [pID=" + pID + ", mID=" + mID + ", pName=" + pName + ", pPrice=" + pPrice + ", pCT=" + pCT
				+ ", pRDATE=" + pRDATE + ", pTDATE=" + pTDATE + ", pINFO=" + pINFO + ", pCNT=" + pCNT + ", pIMG=" + pIMG
				+ ", pSTATE=" + pSTATE + ", pTRANS=" + pTRANS + ", pTAG=" + pTAG + "]";
	}


}
