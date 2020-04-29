package joseph.banking;

import java.util.HashMap;
import java.util.Map;

public class BankingSystem implements BankTransaction, AccountDefaultValue {

	public static int accountNumberPool = 0;
	public static Map<Integer, BankAccount> database = new HashMap<Integer, BankAccount>();
	
	public static void main(String[] args) {
		createNewAccount("A", 2, "add", "111", "Salaried", 20, AccountType.saving, 50000);
		createNewAccount("B", 18, "add", "111", "Retried", 20, AccountType.saving, 20);
		createNewAccount("C", 18, "add", "111", "Business Man", 20, AccountType.salary, 20);
		createNewAccount("D", 18, "add", "111", "Salaried", 20, AccountType.current, 20);
		createNewAccount("E", 18, "add", "111", "Salaried", 20, AccountType.current, 20000);
		createNewAccount("F", 18, "add", "111", "Salaried", 20, AccountType.saving, 2000);
		createNewAccount("G", 18, "add", "111", "Salaried", 20000, AccountType.current, 10000);
		
		BankingSystem system = new BankingSystem();
		system.provideStatement(0);
		system.provideStatement(1);
		system.provideStatement(2);
		system.provideStatement(100);
		
		system.transfer(1, 0, 1000);
		system.transfer(0, 1, 100000);
		system.transfer(2, 0, 10);
		system.transfer(1, 0, 2500);
		system.provideStatement(0);
		system.provideStatement(1);
		system.provideStatement(2);
		
	}
	
	// Static method to define different type of account
	public static enum AccountType{
		saving,
		salary,
		current
	}
	
	// Static method to create an account
	public static void createNewAccount(
			String custName, 
			int custAge, 
			String custAddress, 
			String custContact, 
			String profProfession, 
			int profIncome, 
			AccountType accountType,
			int initDeposit) 
	{
		if (custAge < 18) {
			System.out.println("Create Failed: customer age is under 18.");
			return;
		}
		Account account = null;
		if (accountType == AccountType.saving) {
			if (initDeposit < savingInitalDeposite) {
				System.out.println("Create Failed: customer initial deposit is less than " + savingInitalDeposite + " dollars.");
				return;
			}
			account = new SavingAccount(initDeposit);
		} else if (accountType == AccountType.salary) {
			if (initDeposit < salaryInitalDeposite) {
				System.out.println("Create Failed: customer initial deposit is less than " + salaryInitalDeposite + " dollars.");
				return;
			}
			account = new SalaryAccount(initDeposit);
		} else if (accountType == AccountType.current) {
			if (initDeposit < currentInitalDeposite) {
				System.out.println("Create Failed: customer initial deposit is less than " + currentInitalDeposite + " dollars.");
				return;
			}
			if (profIncome < currentMinimumIncome) {
				System.out.println("Create Failed: customer income is less than " + currentMinimumIncome + " dollars.");
				return;
			}
			account = new CurrentAccount(initDeposit);
		}
		
		PersonalInfo personalInfo = new PersonalInfo(custName, custAge, custAddress, custContact);
		ProfessionalInfo professionalInfo = new ProfessionalInfo(profProfession, profIncome);
		CustomerInfo customerInfo = new CustomerInfo(personalInfo, professionalInfo);
		BankAccount bankAccount = new BankAccount(accountNumberPool, customerInfo, account);
		System.out.println("Create Succeed: customer " + custName + " bank account number : " + accountNumberPool);
		database.put(accountNumberPool, bankAccount);
		++accountNumberPool;
	}

	public static BankAccount getBankAccount(int accountNumber) {
		return database.get(accountNumber);
	}
	
	@Override
	public boolean transfer(int payFromAccountNumber, int payToAccountNumber, int amount) {
		BankAccount payerBankAccount = getBankAccount(payFromAccountNumber);
		BankAccount payeeBankAccount = getBankAccount(payToAccountNumber);
		if (payerBankAccount == null) {
			System.out.println("Transfer Failed: Cannot find this account : " + payFromAccountNumber);
			return false;
		} else if (payeeBankAccount == null) {
			System.out.println("Transfer Failed: Cannot find this account : " + payToAccountNumber);
			return false;
		}
		
		if (payerBankAccount.getAccount().decreaseBalance(amount)) {
			if (payeeBankAccount.getAccount().increaseBalance(amount)) {
				System.out.println("Transfer Succeeded: transfer " + amount + " dollars from account : " + payFromAccountNumber + " to account : " + payToAccountNumber);
				return true;
			} else {
				System.out.println("Transfer Failed: unable to transfer " + amount + " dollars from account : " + payFromAccountNumber + " to account : " + payToAccountNumber);
				return false;
			}
		} else {
			System.out.println("Transfer Failed: unable to take " + amount + " dollars out from account : " + payFromAccountNumber);
			return false;
		}
	}

	@Override
	public boolean withdraw(int accountNumber, int amount) {
		BankAccount bankAccount = getBankAccount(accountNumber);
		if (bankAccount == null) {
			System.out.println("Withdraw Failed: Cannot find this account : " + accountNumber);
			return false;
		}
		if (bankAccount.getAccount().decreaseBalance(amount)) {
			System.out.println("Withdraw Succeeded: withdraw " + amount + " dollars from account : " + accountNumber);
			return true;
		} else {
			System.out.println("Withdraw Failed: unable to withdraw from account : " + accountNumber);
			return false;
		}
	}

	@Override
	public boolean deposit(int accountNumber, int amount) {
		BankAccount bankAccount = getBankAccount(accountNumber);
		if (bankAccount == null) {
			System.out.println("Deposit Failed: Cannot find this account : " + accountNumber);
			return false;
		}
		if (bankAccount.getAccount().increaseBalance(amount)) {
			System.out.println("Deposit Succeeded: deposit " + amount + " dollars into account : " + accountNumber);
			return true;
		} else {
			System.out.println("Deposit Failed: unable to deposit into account : " + accountNumber);
			return false;
		}
	}

	@Override
	public boolean provideStatement(int accountNumber) {
		BankAccount bankAccount = getBankAccount(accountNumber);
		if (bankAccount == null) {
			System.out.println("Cannot find this account");
			return false;
		} else {
			System.out.println(bankAccount);
		}
		return true;
	}

}
