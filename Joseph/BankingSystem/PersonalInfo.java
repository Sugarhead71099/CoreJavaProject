package joseph.banking;

public class PersonalInfo {
	private String name;
	private int age;
	private String address;
	private String contact;
	
	// Constructor
	public PersonalInfo(String name, int age, String address, String contact) {
		this.name = name;
		this.age = age;
		this.address = address;
		this.contact = contact;
	}
	
	// Getter & Setter
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	@Override
	public String toString() {
		return "PersonalInfo [ name=" + name + ", age=" + age + ", address=" + address + ", contact=" + contact + " ]";
	}
	
}
