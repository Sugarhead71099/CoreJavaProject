package com.apolis;

public class Person implements Cloneable {
	int id;
	String name;
	Address address;
		
	public Person(int id, String name, Address address) {
		this.id = id;
		this.name = name;
		this.address = address;
	}
	
	// Deep Clone
	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		Person p = (Person)super.clone();
		p.address = (Address)address.clone();
		return p;
	}
	
	// Shadow Clone
	/*@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}*/

	@Override
	public String toString() {
		return "Person [id="+id+", name="+name+", address="+address.toString()+"]";
	}

	public static void main(String[] args) throws CloneNotSupportedException {
		Person person = new Person(1, "name", new Address("somewhere"));
		System.out.println(person);
		Person personCopy = (Person)person.clone();
		personCopy.address.address = "new address";
		System.out.println(personCopy);
		System.out.println(person);
	}

}

class Address implements Cloneable {
	String address;

	public Address(String address) {
		super();
		this.address = address;
	}

	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}
	
}