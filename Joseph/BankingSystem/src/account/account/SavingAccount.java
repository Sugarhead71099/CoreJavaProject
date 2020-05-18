package account.account;

public class SavingAccount extends Account {
	public SavingAccount(int balance) {
		super(balance, savingMinimumBalance);
	}
}
