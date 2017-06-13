package bean;

public class Jobs {

	int jobid;
	String designation;
	double salary;
	String location;
	String skills;
	String qualification;
	String companyname;
	
	public Jobs()
	{
		
	}
	
	
	
	public Jobs( String designation, double salary, String location,
			String skills, String qualification, String companyname) {
		super();
	//	this.jobid = jobid;
		this.designation = designation;
		this.salary = salary;
		this.location = location;
		this.skills = skills;
		this.qualification = qualification;
		this.companyname = companyname;
	}




	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}


	public String getCompanyname() {
		return companyname;
	}



	
	
}
