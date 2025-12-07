package com.company.dao;

public class CrimeRec {

	private String full_name;
	private String date_of_birth;
	private String crime_committed;
	private String arrest_date;
	private String charges;
	private int convictions;
	private int court_appearances;
	private String sentence;


	public void setfull_name(String full_name) {
		this.full_name = full_name;
		
	}

	public void setdate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
		
	}

	public void setcrime_committed(String crime_committed) {
		this.crime_committed = crime_committed;
		
	}

	public void setarrest_date(String arrest_date) {
		this.arrest_date = arrest_date;
		
	}

	public void setcharges(String charges) {
		this.charges = charges;
		
	}

	public void setconvictions(int convictions) {
		this.convictions = convictions;
		
	}

	public void setcourt_appearances(int court_appearances) {
		this.court_appearances = court_appearances;
		
	}

	public void setsentence(String sentence) {
		this.sentence = sentence;
		
	}


	public String getfull_name() {
		return full_name;
	}

	public String getdate_of_birth() {
		return date_of_birth;
	}

	public String getcrime_committed() {
		return crime_committed;
	}

	public String getarrest_date() {
		return arrest_date;
	}

	public String getcharges() {
		return charges;
	}

	public int getcourt_appearances() {
		return court_appearances;
	}

	public int getconvictions() {
		return convictions;
	}

	public String getsentence() {
		return sentence;
	}

}
