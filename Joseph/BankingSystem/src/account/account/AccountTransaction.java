package account.account;

public interface AccountTransaction {
	public boolean increaseBalance(int amount);
	public boolean decreaseBalance(int amount);
}
