package service;

import java.util.Scanner;

import account.BankAccount;
import account.account.Account;
import account.account.AccountDefaultValue;
import account.customer.PersonalInfo;
import account.customer.ProfessionalInfo;
import database.DataProcessing;

public class BankingSystem implements BankTransaction, AccountDefaultValue {
	private int accountNumberPool = 0;
	private DataProcessing dataProcessing;
	
	public void open() throws Exception {
		dataProcessing = new DataProcessing();
		if ((accountNumberPool = dataProcessing.getMaxId()) == -1) {
			throw new RuntimeException("Database Error: unable to get the max account number from Database!");
		}
		++accountNumberPool;
	}
	
	public void close() throws Exception {
		dataProcessing.close();
	}

	public void printChoices() {
		System.out.println("\nPlease choose your action w/ keyword: ");
		System.out.println("      ACTION            | KEYWORD");
		System.out.println("   1. Create an account | c - create");
		System.out.println("   2. Transfer fund     | t - transfer");
		System.out.println("   3. Withdraw cash     | w - withdraw");
		System.out.println("   4. Deposit cash      | d - deposit");
		System.out.println("   5. Provide statement | s - statement");
		System.out.println("   6. Delete Account    | delete - delete");
		System.out.println("   7. Quit              | q - quit");
		System.out.println("Your choice: ");
	}
	
	public void actionToCreateAccount(Scanner scanner) {
		try {
			scanner.reset();
			System.out.println("Please provide following information: ");
			System.out.println("Name: ");
			String name = scanner.next();
			System.out.println("Age: ");
			int age = scanner.nextInt();
			checkAge(age);
			System.out.println("Address: ");
			String address = scanner.next();
			System.out.println("Contact: ");
			String contact = scanner.next();
			System.out.println("Profession: ");
			String profession = scanner.next();
			System.out.println("Income: ");
			int income = scanner.nextInt();
			System.out.println("Account Type(saving, salary, current): ");
			String accountType = scanner.next();
			checkAccountType(accountType);
			System.out.println("Initial Deposit: $");
			int initDeposit = scanner.nextInt();

			createNewAccount(name, age, address, contact, profession, income, accountType, initDeposit);
		} catch (Exception exp) {
			System.out.println("!!!!! " + exp.getMessage());
		}
	}
	
	public void checkAge(int age) throws RuntimeException {
		if (age < 18) throw new RuntimeException("Invalid Input: Customer age must be over 18 to create an account!");
	}
	
	public void checkAccountType(String type) throws RuntimeException {
		if (type.equals("saving") || type.equals("salary") || type.equals("current")) {}
		else {
			throw new RuntimeException("Create Failed: unknown account type!");
		}
	}
	
	public void createNewAccount (
			String custName, 
			int custAge, 
			String custAddress, 
			String custContact, 
			String profProfession, 
			int profIncome, 
			String accountType,
			int initDeposit) throws RuntimeException 
	{
		Account account = null;
		if (accountType.equals("saving")) {
			if (initDeposit < savingInitalDeposite) {
				throw new RuntimeException("Create Failed: customer initial deposit is less than " + savingInitalDeposite + " dollars.");
			}
			account = new Account(initDeposit, AccountDefaultValue.savingMinimumBalance);
		} else if (accountType.equals("salary")) {
			if (initDeposit < salaryInitalDeposite) {
				throw new RuntimeException("Create Failed: customer initial deposit is less than " + salaryInitalDeposite + " dollars.");
			}
			account = new Account(initDeposit, AccountDefaultValue.salaryMinimumBalance);
		} else {
			if (initDeposit < currentInitalDeposite) {
				throw new RuntimeException("Create Failed: customer initial deposit is less than " + currentInitalDeposite + " dollars.");
			}
			if (profIncome < currentMinimumIncome) {
				throw new RuntimeException("Create Failed: customer income is less than " + currentMinimumIncome + " dollars.");
			}
			account = new Account(initDeposit, AccountDefaultValue.currentMinimumBalance);
		}
		
		PersonalInfo personalInfo = new PersonalInfo(custName, custAge, custAddress, custContact);
		ProfessionalInfo professionalInfo = new ProfessionalInfo(profProfession, profIncome);
		BankAccount bankAccount = new BankAccount(accountNumberPool, personalInfo, professionalInfo, account);
		
		int identifier = dataProcessing.insertData(bankAccount);
		if (identifier != -1) {
			accountNumberPool = identifier + 1;
		} else {
			throw new RuntimeException("Create Failed: unable to insert into Database!");
		}
		System.out.println("Create Succeed - Customer " + custName + " bank account number : " + identifier);
	}

	public BankAccount getBankAccount(int accountNumber) {
		return dataProcessing.getData(accountNumber);
	}
	
	public void actionToTransfer(Scanner scanner, BankingSystem system)
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
				if (dataProcessing.updateData(payerBankAccount) && dataProcessing.updateData(payeeBankAccount)) {
					System.out.println("Transfer Succeeded: transfer " + amount + " dollars from account : " + payFromAccountNumber + " to account : " + payToAccountNumber);
				} else {
					throw new RuntimeException("Transfer Failed: unable to update Database!");
				}
			} else {
				throw new RuntimeException("Transfer Failed: unable to transfer " + amount + " dollars from account : " + payFromAccountNumber + " to account : " + payToAccountNumber);
			}
		} else {
			throw new RuntimeException("Transfer Failed: unable to take " + amount + " dollars out from account : " + payFromAccountNumber);
		}
	}

	public void actionToWithdraw(Scanner scanner, BankingSystem system) {
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
			if (dataProcessing.updateData(bankAccount)) {
				System.out.println("Withdraw Succeeded: withdraw " + amount + " dollars from account : " + accountNumber + ", current balance = " + bankAccount.getAccount().getBalance());
			} else {
				throw new RuntimeException("Withdraw Failed: unable to update Database!");
			}
		} else {
			throw new RuntimeException("Withdraw Failed: unable to withdraw from account : " + accountNumber);
		}
	}

	public void actionToDeposit(Scanner scanner, BankingSystem system) {
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
			if (dataProcessing.updateData(bankAccount)) {
				System.out.println("Deposit Succeeded: deposit " + amount + " dollars into account : " + accountNumber);
			} else {
				throw new RuntimeException("Deposit Failed: unable to update Database!");
			}
		} else {
			throw new RuntimeException("Deposit Failed: unable to deposit into account : " + accountNumber);
		}
	}
	
	public void actionToPrintStatement(Scanner scanner, BankingSystem system) {
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

	public void actionToDelete(Scanner scanner, BankingSystem system) {
		System.out.println("Please enter the account ID to be deleted: ");
		int id = scanner.nextInt();
		try {
			system.delete(id);
		} catch (Exception exp) {
			System.out.println("!!!!! " + exp.getMessage());
		}
 	}

	@Override
	public void delete(int accountNumber) {
		BankAccount bankAccount = getBankAccount(accountNumber);
		if (bankAccount == null) {
			throw new RuntimeException("Cannot find this account");
		} else {
			if (dataProcessing.deleteData(bankAccount)) {
				System.out.println("Delete successfully! Account number = " + bankAccount.getAccountNumber());
			} else {
				throw new RuntimeException("Delete Failed: unable to delete from Database!");
			}
		}
	}
	
}
