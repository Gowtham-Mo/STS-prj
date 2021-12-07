package com.example.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "user")
@Component
public class User {

	@Id   //Specifies the primary key of an entity
	@GeneratedValue(strategy = GenerationType.AUTO)   // 
	private Integer id;
	//@Column(name = "uname")
	private String userName;
	private String userPassword;
	private Integer userAge;
	private String userCity;
	private String userSex;
	private String userHobby;
	private String userStream;
	@Lob
	private byte[] userPic;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(Integer id, String userName, String userPassword, Integer userAge, String userCity, String userSex, String userHobby, String userStream) {
		super();
		this.id = id;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userAge = userAge;
		this.userCity = userCity;
		this.userSex = userSex;
		this.userHobby = userHobby;
		this.userStream = userStream;
	}
	
	
	public User(Integer id, String userName, String userPassword, Integer userAge, String userCity, String userSex, String userHobby, String userStream, byte[] userPic) {
		super();
		this.id = id;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userAge = userAge;
		this.userCity = userCity;
		this.userSex = userSex;
		this.userHobby = userHobby;
		this.userStream = userStream;
		this.userPic = userPic;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public Integer getUserAge() {
		return userAge;
	}
	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}
	public String getUserCity() {
		return userCity;
	}
	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}
	
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserHobby() {
		return userHobby;
	}
	public void setUserHobby(String userHobby) {
		this.userHobby = userHobby;
	}
	public String getUserStream() {
		return userStream;
	}
	public void setUserStream(String userStream) {
		this.userStream = userStream;
	}
	public byte[] getUserPic() {
		return userPic;
	}
	public void setUserPic(byte[] userPic) {
		this.userPic = userPic;
	}
	public String getUserPicture() {
		return Base64.encodeBase64String(userPic);
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", userPassword=" + userPassword + ", userAge=" + userAge
				+ ", userCity=" + userCity + ", userSex=" + userSex + ", userHobby=" + userHobby + ", userStream="
				+ userStream + "]";
	}
	
	
	
	/*
	 * @Override public String toString() { return "User [id=" + id + ", userName="
	 * + userName + ", userPassword=" + userPassword + ", userAge=" + userAge +
	 * ", userCity=" + userCity + "]"; }
	 */
	
	
	
	
	
	
	
}
