package com.spring.dto;

import java.util.Date;

public class BoardDto {
	
	private int bno;
	private String userID;
	private String title;
	private String content;
	private Date regDate;
	private int viewCnt;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	@Override
	public String toString() {
		return "BoardDto [bno=" + bno + ", userID=" + userID + ", title=" + title + ", content=" + content
				+ ", regDate=" + regDate + ", viewCnt=" + viewCnt + "]";
	}

	
}
