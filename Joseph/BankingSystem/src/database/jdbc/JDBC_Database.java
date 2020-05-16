package database.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import account.BankAccount;
import account.account.Account;
import account.customer.PersonalInfo;
import account.customer.ProfessionalInfo;
import database.Database;

public class JDBC_Database implements Database {
	private Connection connection = null;
		
	
	@Override
	public void open() throws Exception {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","system");
		} catch (ClassNotFoundException | SQLException e) {
			System.err.println("Detected ERROR in Database:");
			throw e;
		}
	}
	
	@Override
	public BankAccount getData(int accountNumber) {
		BankAccount bankAccount = null;
		try {
			PreparedStatement pstmt_search = connection.prepareStatement (
					"SELECT Name, Age, Address, Contact, Profession, Income, Balance, MinimumBalance "
					+ "FROM PersonalInfo e, ProfessionalInfo r, Account a "
					+ "WHERE e.Account_Id = ? AND r.Account_Id = ? AND a.Account_Id = ?"
					);
			pstmt_search.setInt(1, accountNumber);
			pstmt_search.setInt(2, accountNumber);
			pstmt_search.setInt(3, accountNumber);
			
			ResultSet rs = pstmt_search.executeQuery();
			if (rs.next()) {
				bankAccount = new BankAccount(
					accountNumber, 
					new PersonalInfo(rs.getString(1),rs.getInt(2), rs.getString(3), rs.getString(4)), 
					new ProfessionalInfo(rs.getString(5), rs.getInt(6)), 
					new Account(rs.getInt(7), rs.getInt(8))
				);
			}
		} catch (SQLException e) {
			//e.printStackTrace();
			return null;
		}
		return bankAccount;
	}
	
	@Override
	public boolean updateData(BankAccount obj) {
		try {
			int accountNumber = obj.getAccountNumber();
			PersonalInfo personalInfo = obj.getPersonalInfo();
			ProfessionalInfo professionalInfo = obj.getProfessionalInfo();
			Account account = obj.getAccount();
			
			PreparedStatement pstmt_update = connection.prepareStatement (
					"UPDATE PersonalInfo SET Name = ?, Age = ?, Address = ?, Contact = ? WHERE Account_Id = ?");
			pstmt_update.setString(1, personalInfo.getName());
			pstmt_update.setInt(2, personalInfo.getAge());
			pstmt_update.setString(3, personalInfo.getAddress());
			pstmt_update.setString(4, personalInfo.getContact());
			pstmt_update.setInt(5, accountNumber);
			if (pstmt_update.executeUpdate() != 1) {
				return false;
			}

			pstmt_update = connection.prepareStatement (
					"UPDATE ProfessionalInfo SET Profession = ?, Income = ? WHERE Account_Id = ?");
			pstmt_update.setString(1, professionalInfo.getProfession());
			pstmt_update.setInt(2, professionalInfo.getIncome());
			pstmt_update.setInt(3, accountNumber);
			if (pstmt_update.executeUpdate() != 1) {
				return false;
			}

			pstmt_update = connection.prepareStatement (
					"UPDATE Account SET Balance = ?, MinimumBalance = ? WHERE Account_Id = ?");
			pstmt_update.setInt(1, account.getBalance());
			pstmt_update.setInt(2, account.getMinimumBalance());
			pstmt_update.setInt(3, accountNumber);
			if (pstmt_update.executeUpdate() != 1) {
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	@Override
	public int insertData(BankAccount obj) {
		try {
			int accountNumber = obj.getAccountNumber();
			PersonalInfo personalInfo = obj.getPersonalInfo();
			ProfessionalInfo professionalInfo = obj.getProfessionalInfo();
			Account account = obj.getAccount();
			PreparedStatement pstmt_insert = connection.prepareStatement("INSERT INTO BankAccount VALUES(?)");
			pstmt_insert.setInt(1, accountNumber);
			if (pstmt_insert.executeUpdate() != 1) {
				return -1;
			}
			
			pstmt_insert = connection.prepareStatement("INSERT INTO PersonalInfo VALUES(?,?,?,?,?)");
			pstmt_insert.setInt(1, accountNumber);
			pstmt_insert.setString(2, personalInfo.getName());
			pstmt_insert.setInt(3, personalInfo.getAge());
			pstmt_insert.setString(4, personalInfo.getAddress());
			pstmt_insert.setString(5, personalInfo.getContact());
			if (pstmt_insert.executeUpdate() != 1) {
				return -1;
			}
			
			pstmt_insert = connection.prepareStatement("INSERT INTO ProfessionalInfo VALUES(?,?,?)");
			pstmt_insert.setInt(1, accountNumber);
			pstmt_insert.setString(2, professionalInfo.getProfession());
			pstmt_insert.setInt(3, professionalInfo.getIncome());
			if (pstmt_insert.executeUpdate() != 1) {
				return -1;
			}
			
			pstmt_insert = connection.prepareStatement("INSERT INTO Account VALUES(?,?,?)");
			pstmt_insert.setInt(1, accountNumber);
			pstmt_insert.setInt(2, account.getBalance());
			pstmt_insert.setInt(3, account.getMinimumBalance());
			if (pstmt_insert.executeUpdate() != 1) {
				return -1;
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
		return obj.getAccountNumber();
	}
	
	@Override
	public boolean deleteData(BankAccount obj) {
		try {
			int accountNumber = obj.getAccountNumber();
			PreparedStatement pstmt_delete = connection.prepareStatement("DELETE FROM Account WHERE Account_Id = ?");
			pstmt_delete.setInt(1, accountNumber);
			if (pstmt_delete.executeUpdate() != 1) {
				return false;
			}
				
			pstmt_delete = connection.prepareStatement("DELETE FROM ProfessionInfo WHERE Account_Id = ?");
			pstmt_delete.setInt(1, accountNumber);
			if (pstmt_delete.executeUpdate() != 1) {
				return false;
			}
			
			pstmt_delete = connection.prepareStatement("DELETE FROM PersonalInfo WHERE Account_Id = ?");
			pstmt_delete.setInt(1, accountNumber);
			if (pstmt_delete.executeUpdate() != 1) {
				return false;
			}
			
			pstmt_delete = connection.prepareStatement("DELETE FROM BankAccount* WHERE Id = ?");
			pstmt_delete.setInt(1, accountNumber);
			if (pstmt_delete.executeUpdate() != 1) {
				return false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	@Override
	public int getMaxId() {
		Statement stmt;
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT MAX(Id) FROM BankAccount");
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	@Override
	public void close() throws Exception {
		connection.close();
	}
}