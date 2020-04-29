package com.apolis;

public class ImmutableClassPractice {
	public static void main(String[] args) {
		MutableClass mutableClass = new MutableClass(100, "Whatever");
		try {
			ImmutableClass immutableClass = new ImmutableClass(mutableClass);
			
			System.out.println(immutableClass);
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
	}
}

//Q: create immutable class
//Q: What happen if immutable class have mutable object as associated object 

class ImmutableClass {
	private final int i = 0;
	private MutableClass mutableClass;
	
	public ImmutableClass(MutableClass mutableClass) throws CloneNotSupportedException {
		this.mutableClass = (MutableClass)mutableClass.clone();
	}
	
	public int getI() {
		return i;
	}
	public MutableClass getMutableClass() throws CloneNotSupportedException {
		return (MutableClass)mutableClass.clone();
	}

	@Override
	public String toString() {
		return "ImmutableClass [i=" + i + ", mutableClass=" + mutableClass + "]";
	}
	
}

class MutableClass implements Cloneable{
	private int k = 0;
	private String s = "HelloWorld";
	
	public MutableClass(int k, String s) {
		this.k = k;
		this.s = s;
	}

	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}

	@Override
	public String toString() {
		return "MutableClass [k=" + k + ", s=" + s + "]";
	}
}
