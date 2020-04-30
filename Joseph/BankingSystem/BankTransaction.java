package joseph.banking;

public interface BankTransaction {
	void transfer(int payFromAccountNumber, int payToAccountNumber, int amount);
	void withdraw(int accountNumber, int amount);
	void deposit(int accountNumber, int amount);
	void provideStatement(int accountNumber);
}
