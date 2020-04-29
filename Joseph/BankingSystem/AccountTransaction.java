package joseph.banking;

public interface AccountTransaction {
	public boolean increaseBalance(int amount);
	public boolean decreaseBalance(int amount);
}
