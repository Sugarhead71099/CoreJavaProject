package joseph.banking;

public class BankAccount {
	private int accountNumber;
	private CustomerInfo customerInfo;
	private Account account;
		
	// Constructor
	public BankAccount(int accountNumber, CustomerInfo customerInfo, Account account) {
		this.accountNumber = accountNumber;
		this.customerInfo = customerInfo;
		this.account = account;
	}

	// Getter (& Setter)
	public int getAccountNumber() {
		return accountNumber;
	}

	public CustomerInfo getCustomerInfo() {
		return customerInfo;
	}

	public Account getAccount() {
		return account;
	}

	@Override
	public String toString() {
		return "BankAccount Number : " + accountNumber + " [\n  " + customerInfo + ", \n  " + account + "\n]";
	}
}
