package com.naver.pinku.user.model;

public class Member {
	private int mId = 0;
	private String mEmail;
	private String mPassword;

	public Member() {

	}

	public Member(String mail, String pwd)
	{
		this.mEmail = mail;
		this.mPassword = pwd;
	}

	public int getID() {
		return mId;
	}

	public void setID(int id) {
		this.mId = id;
	}

	public String getMail() {
		return mEmail;
	}

	public void setMail(String mail) {
		this.mEmail = mail;
	}

	public String getPassword() {
		return mPassword;
	}

	public void setPassword(String password) {
		this.mPassword = password;
	}
}
