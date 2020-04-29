package com.apolis;

public class StringAssignment {

	public static void main(String[] args) {
		String str = "abcde";
		
		//find the length of String
		System.out.println("String Length = " +  str.length());
		
		//dFind the reverse of the string,IndexOf  of the String , And concatenate the  2 Strings
		String reverseString = findReverseString(str);
		System.out.println("Reverse String: " + reverseString);
		
		String subString = "bcd";
		int indexOfString = str.indexOf(subString);
		System.out.println("Index of String 'bcd': " + indexOfString);
    
		String concatReverseString = concatenateString(str, reverseString);
		System.out.println("Concat String: " + concatReverseString);
	}

	public static String findReverseString(String str) {
		String ans = "";
		for (int idx = str.length() - 1; idx >= 0; --idx) {
			ans += str.charAt(idx);
		}
		return ans;
	}
	
	public static String concatenateString(String str1, String str2) {
		for (int idx = 0; idx < str2.length(); ++idx) {
			str1 += str2.charAt(idx);
		}
		
		return str1;
	}
}
