package account.account;

import java.util.concurrent.locks.ReentrantLock;

public class Account implements AccountTransaction, AccountDefaultValue {
	private int balance;
	private int minimumBalance;
	private ReentrantLock accountOperationLock = new ReentrantLock();
	
	// Constructor
	public Account(int balance, int minimumBalance) {
		this.balance = balance;
		this.minimumBalance = minimumBalance;
	}
	
	// Override interface methods
	@Override
	public synchronized boolean increaseBalance(int amount) {
		accountOperationLock.lock();
		setBalance(amount + balance);
		accountOperationLock.unlock();
		return true;
	}

	@Override
	public synchronized boolean decreaseBalance(int amount) {
		accountOperationLock.lock();
		boolean successDecreaseBalance = false;
		int newBalance = balance - amount;
		if (newBalance > minimumBalance && newBalance >= 0) {
			balance = newBalance;
			successDecreaseBalance = true;
		}
		accountOperationLock.unlock();
		return successDecreaseBalance;
	}
	
	// Getter & Setter
	public int getBalance() {
		return balance;
	}
	public int getMinimumBalance() {
		return minimumBalance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public void setMinimumBalance(int minimumBalance) {
		this.minimumBalance = minimumBalance;
	}

	@Override
	public String toString() {
		return "Account [ balance=" + balance + ", minimumBalance=" + minimumBalance + " ]";
	}
	
}