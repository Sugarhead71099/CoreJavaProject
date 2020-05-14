package account.account;

public class CurrentAccount extends Account {
	public CurrentAccount(int balance) {
		super(balance, currentMinimumBalance);
	}
}
