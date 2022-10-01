package com.delivery.salad.command;

public class KakaoUser {

/*
 * create table kakao_table (
	k_number bigint auto_increment,
    k_name varchar(30) not null,
    k_email varchar(100) not null,
    
    USERPHONE	VARCHAR(50)	NULL,
	USEREMAIL	VARCHAR(50)	NULL,
	USERBASICADDR	VARCHAR(300)	NULL,
	USERDETAILADDR	VARCHAR(300)	NULL,
    constraint primary key(k_number)
);	
 */
	
	
	public int kNum;
	public String userName;
	public String userEmail;
	public String userPhone;
	public String userBasicAddr;
	public String userDetailAddr;
	// 아 이거 잘못만들었네 uservo랑 겹치는게 너무 많네 
	
	
	

	
	@Override
	public String toString() {
		return "KakaoUser [kNum=" + kNum + ", userName=" + userName + ", userEmail=" + userEmail + ", userPhone="
				+ userPhone + ", userBasicAddr=" + userBasicAddr + ", userDetailAddr=" + userDetailAddr + "]";
	}
	
	public int getkNum() {
		return kNum;
	}
	public void setkNum(int kNum) {
		this.kNum = kNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEamil) {
		this.userEmail = userEamil;
	}


	public String getUserPhone() {
		return userPhone;
	}


	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
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
