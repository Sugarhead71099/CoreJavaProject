package joseph.banking;

import java.util.Scanner;
import java.util.HashMap;
import java.util.Map;

public class BankingSystem implements BankTransaction, AccountDefaultValue {

	public static int accountNumberPool = 0;
	public static Map<Integer, BankAccount> database = new HashMap<Integer, BankAccount>();
	
	public static void main(String[] args) {
		
		BankingSystem system = new BankingSystem();
		System.out.println("Welcome to Banking System");
		Scanner scanner = new Scanner(System.in);
		
		boolean continueFlag = true;
		while (continueFlag) {
			printChoices();
			String action = scanner.next();
			if (action.equals("c")) {
				actionToCreateAccount(scanner);
			} else if (action.equals("t")) {
				actionToTransfer(scanner, system);
			} else if (action.equals("w")) {
				actionToWithdraw(scanner, system);
			} else if (action.equals("d")) {
				actionToDeposit(scanner, system);
			} else if (action.equals("s")) {
				actionToPrintStatement(scanner, system);
			} else if (action.equals("q")) {
				continueFlag = false;
			} else {
				System.out.println("--> Your choice is invalid!");
			}
		}
		
		System.out.println("You have successfully quitted the banking system!");
	}
	
	public static void printChoices() {
		System.out.println("\nPlease choose your action w/ keyword: ");
		System.out.println("      ACTION            | KEYWORD");
		System.out.println("   1. Create an account | c - create");
		System.out.println("   2. Transfer fund     | t - transfer");
		System.out.println("   3. Withdraw cash     | w - withdraw");
		System.out.println("   4. Deposit cash      | d - deposit");
		System.out.println("   5. Provide statement | s - statement");
		System.out.println("   6. Quit              | q - quit");
		System.out.println("Your choice: ");
	}
	
	public static void actionToCreateAccount(Scanner scanner) {
		System.out.println("Please provide following information: ");
		System.out.println("Name: ");
		String name = scanner.next();
		System.out.println("Age: ");
		int age = scanner.nextInt();
		System.out.println("Address: ");
		String address = scanner.next();
		System.out.println("Contact: ");
		String contact = scanner.next();
		System.out.println("Profession: ");
		String profession = scanner.next();
		System.out.println("Income: ");
		int income = scanner.nextInt();
		System.out.println("Account Type(saving, salary,current): ");
		String accountType = scanner.next();
		System.out.println("Initial Deposit: $");
		int initDeposit = scanner.nextInt();
		
		try {
			createNewAccount(name, age, address, contact, profession, income, accountType, initDeposit);
		} catch (Exception exp) {
			System.out.println("!!!!! " + exp.getMessage());
		}
	}
	
	public static void createNewAccount(
			String custName, 
			int custAge, 
			String custAddress, 
			String custContact, 
			String profProfession, 
			int profIncome, 
			String accountType,
			int initDeposit) 
	{
		if (custAge < 18) {
			throw new RuntimeException("Invalid Input: Customer age must be over 18 to create an account!");
		}
		
		Account account = null;
		if (accountType.equals("saving")) {
			if (initDeposit < savingInitalDeposite) {
				throw new RuntimeException("Create Failed: customer initial deposit is less than " + savingInitalDeposite + " dollars.");
			}
			account = new SavingAccount(initDeposit);
		} else if (accountType.equals("salary")) {
			if (initDeposit < salaryInitalDeposite) {
				throw new RuntimeException("Create Failed: customer initial deposit is less than " + salaryInitalDeposite + " dollars.");
			}
			account = new SalaryAccount(initDeposit);
		} else if (accountType.equals("current")) {
			if (initDeposit < currentInitalDeposite) {
				throw new RuntimeException("Create Failed: customer initial deposit is less than " + currentInitalDeposite + " dollars.");
			}
			if (profIncome < currentMinimumIncome) {
				throw new RuntimeException("Create Failed: customer income is less than " + currentMinimumIncome + " dollars.");
			}
			account = new CurrentAccount(initDeposit);
		} else {
			throw new RuntimeException("Create Failed: unknown account type!");
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
	
	public static void actionToTransfer(Scanner scanner, BankingSystem system)
	{
		System.out.println("Please enter the payer's account ID: ");
		int payerId = scanner.nextInt();
		
		System.out.println("Please enter the receiver's account ID: ");
		int payeeId = scanner.nextInt();
		
		System.out.println("Please enter the amount you want to transfer: $");
		int amount = scanner.nextInt();
		
		try {
			system.transfer(payerId, payeeId, amount);
		} catch (Exception exp) {
			System.out.println("!!!!! " + exp.getMessage());
		}
	}
	
	@Override
	public void transfer(int payFromAccountNumber, int payToAccountNumber, int amount) {
		BankAccount payerBankAccount = getBankAccount(payFromAccountNumber);
		BankAccount payeeBankAccount = getBankAccount(payToAccountNumber);
		if (payerBankAccount == null) {
			throw new RuntimeException("Transfer Failed: Cannot find this account : " + payFromAccountNumber);
		} else if (payeeBankAccount == null) {
			throw new RuntimeException("Transfer Failed: Cannot find this account : " + payToAccountNumber);
		}
		
		if (payerBankAccount.getAccount().decreaseBalance(amount)) {
			if (payeeBankAccount.getAccount().increaseBalance(amount)) {
				throw new RuntimeException("Transfer Succeeded: transfer " + amount + " dollars from account : " + payFromAccountNumber + " to account : " + payToAccountNumber);
			} else {
				throw new RuntimeException("Transfer Failed: unable to transfer " + amount + " dollars from account : " + payFromAccountNumber + " to account : " + payToAccountNumber);
			}
		} else {
			throw new RuntimeException("Transfer Failed: unable to take " + amount + " dollars out from account : " + payFromAccountNumber);
		}
	}

	public static void actionToWithdraw(Scanner scanner, BankingSystem system) {
		System.out.println("Please enter the account ID: ");
		int id = scanner.nextInt();
		System.out.println("Please enter the amount you want to withdraw: $");
		int amount = scanner.nextInt();
		
		try {
			system.withdraw(id, amount);
		} catch (Exception exp) {
			System.out.println("!!!!! " + exp.getMessage());
		}
	}
	
	@Override
	public void withdraw(int accountNumber, int amount) {
		BankAccount bankAccount = getBankAccount(accountNumber);
		if (bankAccount == null) {
			throw new RuntimeException("Withdraw Failed: Cannot find this account : " + accountNumber);
		}
		if (bankAccount.getAccount().decreaseBalance(amount)) {
			throw new RuntimeException("Withdraw Succeeded: withdraw " + amount + " dollars from account : " + accountNumber);
		} else {
			throw new RuntimeException("Withdraw Failed: unable to withdraw from account : " + accountNumber);
		}
	}

	public static void actionToDeposit(Scanner scanner, BankingSystem system) {
		System.out.println("Please enter the account ID: ");
		int id = scanner.nextInt();
		System.out.println("Please enter the amount you want to deposit: $");
		int amount = scanner.nextInt();
		try {
			system.deposit(id, amount);
		} catch (Exception exp) {
			System.out.println("!!!!! " + exp.getMessage());
		}
	}
	
	@Override
	public void deposit(int accountNumber, int amount) {
		BankAccount bankAccount = getBankAccount(accountNumber);
		if (bankAccount == null) {
			throw new RuntimeException("Deposit Failed: Cannot find this account : " + accountNumber);
		}
		if (bankAccount.getAccount().increaseBalance(amount)) {
			System.out.println("Deposit Succeeded: deposit " + amount + " dollars into account : " + accountNumber);
		} else {
			throw new RuntimeException("Deposit Failed: unable to deposit into account : " + accountNumber);
		}
	}
	
	public static void actionToPrintStatement(Scanner scanner, BankingSystem system) {
		System.out.println("Please enter the account ID: ");
		int id = scanner.nextInt();
		try {
			system.provideStatement(id);
		} catch (Exception exp) {
			System.out.println("!!!!! " + exp.getMessage());
		}
 	}

	@Override
	public void provideStatement(int accountNumber) {
		BankAccount bankAccount = getBankAccount(accountNumber);
		if (bankAccount == null) {
			throw new RuntimeException("Cannot find this account");
		} else {
			System.out.println(bankAccount);
		}
	}

}
