package database;

import account.BankAccount;

public interface Database {
	public static final String HIBERNATE = "hibernate";
	public static final String JDBC = "jdbc";
	
	public abstract BankAccount getData(int accountNumber);
	public abstract int insertData(BankAccount bankAccount);
	public abstract boolean updateData(BankAccount bankAccount);
	public abstract boolean deleteData(BankAccount bankAccount);
	public abstract int getMaxId();
	public abstract void open() throws Exception;
	public abstract void close() throws Exception;
}
