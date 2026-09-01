package com.company.dao;

public class User1 {
	private String Name;
	private int age;
	private String Email;
	private Long phone;
	private String Address;
	private String Username;
    private String Password;
    
    public String getName() {
    	return Name;
    }
    
    public void setName(String Name) {
    	this.Name=Name;
		
	}
    
	public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
    public int getAge() {
    	return age;
    }


	public void setAge(int age) {
		this.age = age;
		
	}
	public String getEmail() {
    	return Email;
    }

	public void setEmail(String Email) {
		this.Email = Email;
		
	}

	public Long getPhone() {
    	return phone;
    }

	public void setPhone(Long phone) {
		this.phone = phone;
		
	}
	public String getAddress() {
    	return Address;
    }

	public void setAddress(String Address) {
		this.Address = Address;
		
	}
}
