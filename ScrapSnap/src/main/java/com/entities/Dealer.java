package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Dealer {
@Id	
private int id;
private String name;
private String number;
private String email;
private String password;
private String metal;
private String paper;
private String plastic;
private String gender;
private Date addDate;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getNumber() {
	return number;
}
public void setNumber(String number) {
	this.number = number;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getMetal() {
	return metal;
}
public void setMetal(String metal) {
	this.metal = metal;
}
public String getPaper() {
	return paper;
}
public void setPaper(String paper) {
	this.paper = paper;
}
public String getPlastic() {
	return plastic;
}
public void setPlastic(String plastic) {
	this.plastic = plastic;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public Date getAddDate() {
	return addDate;
}
public void setAddDate(Date addDate) {
	this.addDate = addDate;
}


public Dealer(int id, String name, String number, String email, String password, String metal, String paper,
		String plastic, String gender, Date addDate) {
	super();
	this.id = new Random().nextInt(10000);;
	this.name = name;
	this.number = number;
	this.email = email;
	this.password = password;
	this.metal = metal;
	this.paper = paper;
	this.plastic = plastic;
	this.gender = gender;
	this.addDate = addDate;
}
public Dealer() {
	super();
	// TODO Auto-generated constructor stub
}



}
