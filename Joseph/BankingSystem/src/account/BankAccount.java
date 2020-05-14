package account;

import account.account.Account;
import account.customer.CustomerInfo;

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

	@Override
	public int hashCode() {
		int result = 17;
		result += 31 * accountNumber;
		result += customerInfo.hashCode();
		result += account.hashCode();
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			// Leave empty
		} else if (obj instanceof BankAccount) {
			BankAccount comparedAccount = (BankAccount)obj;
			if (accountNumber == comparedAccount.getAccountNumber() &&
				customerInfo.equals(comparedAccount.getCustomerInfo()) &&
				account.equals(comparedAccount.getAccount())) {
				return true;
			}
		}
		return false;
	}
}
