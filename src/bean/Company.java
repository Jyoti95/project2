package bean;

public class Company {
	
	int id;
	String email;
	String password;
	String name;
	String type;
	String location;
	int contact;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	public Company(String email, String password, String name, String type,
			String location, int contact) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.type = type;
		this.location = location;
		this.contact = contact;
	}
		
	public Company(){}
	
	public Company(String email,String password){
		
		this.email=email;
		this.password=password;
		
		
	}

}
