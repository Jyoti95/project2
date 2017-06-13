package bean;

import java.util.Date;

public class JobSeeker {

	int id;
	String fname;
	String lname;
	String password;
	String email;
	String telephone;
	String gender;
	Date birthday;
	String location;
	String qualification;
	String industry;
	String skill;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public JobSeeker(String fname, String lname, String password, String email,
			String telephone, String gender, Date birthday, String location,
			String qualification, String industry, String skill) {
		super();
		// this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.password = password;
		this.email = email;
		this.telephone = telephone;
		this.gender = gender;
		this.birthday = birthday;
		this.location = location;
		this.qualification = qualification;
		this.industry = industry;
		this.skill = skill;
	}

	public JobSeeker() {

	}

	public JobSeeker(String password, String email) {
		super();
		this.password = password;
		this.email = email;
	}

}
