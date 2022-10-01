package com.delivery.salad.command;

public class NaverUser {
	
/*
 * create table naver_table (
	n_number bigint auto_increment,
    n_name varchar(30) not null,
    n_email varchar(100) not null,
    n_phone varchar(100) not null,
    
    USERPHONE	VARCHAR(50)	NULL,
	USEREMAIL	VARCHAR(50)	NULL,
	USERBASICADDR	VARCHAR(300)	NULL,
	USERDETAILADDR	VARCHAR(300)	NULL,
    constraint primary key(n_number)
);	
 */
	
	public int nNum;
	public String userName;
	public String nPhone;
	public String userEmail;
	public String userPhone;
	public String userBasicAddr;
	public String userDetailAddr;
	

	
	
	
	@Override
	public String toString() {
		return "NaverUser [nNum=" + nNum + ", userName=" + userName + ", nPhone=" + nPhone
				+ ", userEmail=" + userEmail + ", userPhone=" + userPhone + ", userBasicAddr=" + userBasicAddr
				+ ", userDetailAddr=" + userDetailAddr + "]";
	}
	
	public int getnNum() {
		return nNum;
	}
	public void setnNum(int nNum) {
		this.nNum = nNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getnPhone() {
		return nPhone;
	}
	public void setnPhone(String nPhone) {
		this.nPhone = nPhone;
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
