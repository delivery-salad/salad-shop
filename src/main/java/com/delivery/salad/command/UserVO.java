package com.delivery.salad.command;


/**
    DROP TABLE IF EXISTS `USER`;

	CREATE TABLE `USER` (
		`USERID`	VARCHAR2(50)	NOT NULL,
		`USERNAME`	VARCHAR2(50)	NOT NULL,
		`USERPW`	VARCHAR2(100)	NOT NULL,
		`USERPHONE`	VARCHAR2(50)	NOT NULL,
		`USEREMAIL`	VARCHAR2(50)	NOT NULL,
		`USERBASICADDR`	VARCHAR2(300)	NOT NULL,
		`USERDETAILADDR`	VARCHAR2(300)	NOT NULL
	);

	ALTER TABLE `USER` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
		`USERID`
	);
 */
public class UserVO { 
	
	public String userId;
	public String userName;
	public String userPw;
	public String userPhone;
	public String userEmail;
	public String userBasicAddr;
	public String userDetailAddr;
	
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userName=" + userName + ", userPw=" + userPw + ", userPhone=" + userPhone
				+ ", userEmail=" + userEmail + ", userBasicAddr=" + userBasicAddr + ", userDetailAddr=" + userDetailAddr
				+ "]";
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserBasicAddr() {
		return userBasicAddr;
	}
	public void setUserBasicAddr(String userBasicAddr) {
		this.userBasicAddr = userBasicAddr;
	}
	public String getUserDetailAddr() {
		return userDetailAddr;
	}
	public void setUserDetailAddr(String userDetailAddr) {
		this.userDetailAddr = userDetailAddr;
	}
	

}
