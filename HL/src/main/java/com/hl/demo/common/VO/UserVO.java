package com.hl.demo.common.VO;

public class UserVO {
	private String User_Name; 
	private String User_Birth; 
	private String User_ID; 
	private String User_PW; 
	private String User_Email;
	private int User_Root;
	
	public String getUser_Name() {
		return User_Name;
	}
	public void setUser_Name(String user_Name) {
		User_Name = user_Name;
	}
	public String getUser_Birth() {
		return User_Birth;
	}
	public void setUser_Birth(String user_Birth) {
		User_Birth = user_Birth;
	}
	public String getUser_ID() {
		return User_ID;
	}
	public void setUser_ID(String user_ID) {
		User_ID = user_ID;
	}
	public String getUser_PW() {
		return User_PW;
	}
	public void setUser_PW(String user_PW) {
		User_PW = user_PW;
	}
	public String getUser_Email() {
		return User_Email;
	}
	public void setUser_Email(String user_Email) {
		User_Email = user_Email;
	}
	
	public int getUser_Root() {
		return User_Root;
	}
	public void setUser_Root(int user_Root) {
		User_Root = user_Root;
	}
	@Override
	public String toString() {
		return "UserVO [User_Name=" + User_Name + ", User_Birth=" + User_Birth + ", User_ID=" + User_ID + ", User_PW="
				+ User_PW + ", User_Email=" + User_Email + "]";
	} 
	
	
}
