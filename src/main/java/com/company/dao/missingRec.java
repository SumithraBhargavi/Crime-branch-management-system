package com.company.dao;

public class missingRec {

	private String name;
	private String date_of_birth;
	private String gender;
	private int height;
	private int weight;
	private String last_seen_date;
	private String last_seen_location;
	private String circumstances;

	public void setname(String name) {
		this.name = name;
		
	}

	public void setdate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
		
	}

	public void setgender(String gender) {
		this.gender = gender;
		
	}

	public void setheight(int height) {
		this.height = height;
	}

	public void setweight(int weight) {
		this.weight = weight;
		
	}

	public void setlast_seen_date(String last_seen_date) {
		this.last_seen_date = last_seen_date;
		
	}

	public void setlast_seen_location(String last_seen_location) {
		this.last_seen_location = last_seen_location;
		
	}

	public void setcircumstances(String circumstances) {
		this.circumstances = circumstances;
		
	}

	public String getname() {
		return name;
	}

	public String getdate_of_birth() {
		return date_of_birth;
	}

	public String getgender() {
		return gender;
	}

	public int getheight() {
		return height;
	}

	public int getweight() {
		return weight;
	}

	public String getlast_seen_date() {
		return last_seen_date;
	}

	public String getlast_seen_location() {
		return last_seen_location;
	}

	public String getcircumstances() {
		return circumstances;
	}

}
