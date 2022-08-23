package com.spring.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class UserDto {
	private int userNum;
	private String userID;
	private String userPW;
	private String userName;
	private String userGender;
	private String userEmail;
	private String userPhone;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date userBirth;
	private int enabled;
	
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public Date getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	@Override
	public String toString() {
		return "UserDto [userNum=" + userNum + ", userID=" + userID + ", userPW=" + userPW + ", userName=" + userName
				+ ", userGender=" + userGender + ", userEmail=" + userEmail + ", userPhone=" + userPhone
				+ ", userBirth=" + userBirth + ", enabled=" + enabled + "]";
	}
	

}