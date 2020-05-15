package account.account;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "HIBERNATE_Account")
public class Account implements AccountTransaction, AccountDefaultValue, Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ACC_ID")
	private int id;
	@Column(name = "BALANCE")
	private int balance;
	@Column(name = "MINIMUM_BALANCE")
	private int minimumBalance;
	
	// Constructor
	public Account() {
		
	}
	
	public Account(int balance, int minimumBalance) {
		this.balance = balance;
		this.minimumBalance = minimumBalance;
	}
	
	// Override interface methods
	@Override
	public synchronized boolean increaseBalance(int amount) {
		setBalance(amount + balance);
		return true;
	}

	@Override
	public synchronized boolean decreaseBalance(int amount) {
		boolean successDecreaseBalance = false;
		int newBalance = balance - amount;
		if (newBalance > minimumBalance && newBalance >= 0) {
			balance = newBalance;
			successDecreaseBalance = true;
		}
		return successDecreaseBalance;
	}
	
	// Getter & Setter
	public int getBalance() {
		return balance;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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