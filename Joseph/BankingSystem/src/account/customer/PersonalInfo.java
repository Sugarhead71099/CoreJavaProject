package account.customer;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "HIBERNATE_PERSONAL_INFO")
public class PersonalInfo implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "PER_INFO_ID")
	private int id;
	@Column(name = "NAME")
	private String name;
	@Column(name = "AGE")
	private int age;
	@Column(name = "ADDRESS")
	private String address;
	@Column(name = "CONTACT")
	private String contact;
	
	// Constructor
	public PersonalInfo() {
		
	}
	
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "PersonalInfo [ name=" + name + ", age=" + age + ", address=" + address + ", contact=" + contact + " ]";
	}

	@Override
	public int hashCode() {
		return 31 + name.hashCode() + age * 17 + address.hashCode() + contact.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			// Leave empty
		} else if (obj instanceof PersonalInfo){
			PersonalInfo comparedPersonalInfo = (PersonalInfo)obj;
			if (name.equals(comparedPersonalInfo.getName()) &&
				age == comparedPersonalInfo.getAge() && 
				address.equals(comparedPersonalInfo.getAddress()) &&
				contact.equals(comparedPersonalInfo.getContact())) {
				return true;
			}
		}
		return false;
	}
}
