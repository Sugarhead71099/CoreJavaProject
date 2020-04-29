package joseph.banking;

public interface BankTransaction {
	boolean transfer(int payFromAccountNumber, int payToAccountNumber, int amount);
	boolean withdraw(int accountNumber, int amount);
	boolean deposit(int accountNumber, int amount);
	boolean provideStatement(int accountNumber);
}
