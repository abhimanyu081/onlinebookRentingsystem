package com.User;


import java.util.Date;

public class User {

    private String uname="";
    private String name="";
    private String email="";
    private String password="";
    private String address="";
    private String mobile="";
    private String college="";
    
    public void setUname(String uname) {
        this.uname=uname;
    }
    public String getUname(){
    	return uname;
    }
    public void setName(String name) {
        this.name=name;
    }
    public String getName(){
    	return name;
    }
    public void setPassword(String password) {
        this. password = password;
    }
    public String getPassword() {
    	
        return  password;
    }
    public void setAddress(String address) {
    
        this.address = address;
    }
    public String getAddress(){
    	return address;
    }
   /* public Date getDob() {
        return dob;
    }
    public void setDob(Date dob) {
        this.dob = dob;
    }*/
    public void setMobile(String mobile){
    	this.mobile=mobile;
    }
    public String getMobile(){
    	return mobile;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setCollege(String college){
    	this.college=college;
    }
    public String getCollege(){
    	return college;
    }
    @Override
  /*  public String toString() {
        return "User [username=" + uname + ", Name=" + name
                + ", Email=" + email + ", dob=" + dob + ", email="
                + email + "]";
    }*/    
    public String toString(){
    	return uname+ ""+name+""+email+""+password+""+mobile+""+address+""+college;	
    }
}