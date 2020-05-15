package service;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		BankingSystem system = new BankingSystem();
		try {
			system.open();
		} catch (Exception e) {
			System.err.println("\nDetected ERROR in System:");
			e.printStackTrace();
			System.err.println("\nAutomatically closed system");
			System.exit(1);
		}
		
		System.out.println("Welcome to Banking System");
		Scanner scanner = new Scanner(System.in);
		
		boolean continueFlag = true;
		while (continueFlag) {
			system.printChoices();
			String action = scanner.next();
			if (action.equals("c")) {
				system.actionToCreateAccount(scanner);
			} else if (action.equals("t")) {
				system.actionToTransfer(scanner, system);
			} else if (action.equals("w")) {
				system.actionToWithdraw(scanner, system);
			} else if (action.equals("d")) {
				system.actionToDeposit(scanner, system);
			} else if (action.equals("s")) {
				system.actionToPrintStatement(scanner, system);
			} else if (action.equals("delete")){
				system.actionToDelete(scanner, system);
			} else if (action.equals("q")) {
				continueFlag = false;
			} else {
				System.out.println("--> Your input is invalid!");
			}
		}
		
		try {
			system.close();
			System.out.println("You have successfully quitted the banking system!");
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("!!! Unable to close banking system!");
		}
	}
}
