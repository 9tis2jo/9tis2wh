package com.springbook.biz.user;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVO {
	private String mID;
	private String mPW;
	private String mNAME;
	private String mBIR;
	private String mPHONE;
	private String mEMAIL;
	private String mPOST;
	private String mADDR;
	private int mDROP;
	
	@Override
	public String toString() {
		return "UserVO [mID=" + mID + ", mPW=" + mPW + ", mNAME=" + mNAME + ", mBIR=" + mBIR + ", mPHONE=" + mPHONE
				+ ", mEMAIL=" + mEMAIL + ", mPOST=" + mPOST + ", mADDR=" + mADDR + ", mDROP=" + mDROP  + "]";
	}
}
