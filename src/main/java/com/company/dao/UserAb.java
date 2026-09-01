package com.company.dao;

public abstract class UserAb {
	abstract boolean addUser(User user);
   abstract  boolean isValidUser(String Username,String Password);
}
