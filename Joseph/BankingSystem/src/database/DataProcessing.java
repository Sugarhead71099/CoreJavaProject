package database;

import java.util.HashMap;
import java.util.Map;

import account.BankAccount;

public class DataProcessing {
	private Map<Integer, BankAccount> cache;
	private Database database;
	
	public DataProcessing() throws Exception {
		cache = new HashMap<>();
		database = DatabaseFactory.getDatabase("hibernate");
		database.open();
	}
	
	public int getMaxId() {
		return database.getMaxId();
	}
	
	public void close() throws Exception {
		database.close();
	}
	
	public BankAccount getData(int accountNumber) {
		BankAccount data = null;
		
		// Try to get data from cache
		data = cache.get(accountNumber);
		
		// If cache doesn't contain data, try to get data from Database.
		if (data == null) {
			data = database.getData(accountNumber);
			if (data != null) {
				cache.put(accountNumber, data);
			}
		}
		
		return data;
	}
	
	public int insertData(BankAccount obj) {
		int identifier = database.insertData(obj);
		if (identifier != -1) {
			cache.put(obj.getAccountNumber(), obj);
		}
		return identifier;
	}
	
	public boolean updateData(BankAccount obj) {
		if (database.updateData(obj)) {
			cache.put(obj.getAccountNumber(), obj);
			return true;
		} else {
			return false;
		}
	}
	
	public boolean deleteData(BankAccount obj) {
		if (database.deleteData(obj)) {
			cache.remove(obj.getAccountNumber());
			return true;
		} else {
			return false;
		}
	}
}
