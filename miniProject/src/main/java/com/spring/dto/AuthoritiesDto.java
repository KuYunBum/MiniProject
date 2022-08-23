package com.spring.dto;

public class AuthoritiesDto {
	private String userID;
	private String authority;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	@Override
	public String toString() {
		return "AuthoritiesDto [userID=" + userID + ", authority=" + authority + "]";
	}
	
	
}