package account;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import account.account.Account;
import account.customer.PersonalInfo;
import account.customer.ProfessionalInfo;

@Entity
@Table(name = "HIBERNATE_BANK_ACCOUNT")
public class BankAccount implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "ACCOUNT_NUMBER")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int accountNumber;
	@Embedded
	private PersonalInfo personalInfo;
	@Embedded
	private ProfessionalInfo professionalInfo;
	@Embedded
	private Account account;

	// Constructor
	public BankAccount() {
		
	}
	
	public BankAccount(int accountNumber, PersonalInfo personalInfo, ProfessionalInfo professionalInfo,
			Account account) {
		this.accountNumber = accountNumber;
		this.personalInfo = personalInfo;
		this.professionalInfo = professionalInfo;
		this.account = account;
	}

	// Getter (& Setter)
	public int getAccountNumber() {
		return accountNumber;
	}
	
	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public PersonalInfo getPersonalInfo() {
		return personalInfo;
	}
	public void setPersonalInfo(PersonalInfo personalInfo) {
		this.personalInfo = personalInfo;
	}
	public ProfessionalInfo getProfessionalInfo() {
		return professionalInfo;
	}
	public void setProfessionalInfo(ProfessionalInfo professionalInfo) {
		this.professionalInfo = professionalInfo;
	}

	@Override
	public String toString() {
		return "BankAccount Number : " + accountNumber + " [\n  " + personalInfo + ", \n  " + professionalInfo + ", \n  " +account + "\n]";
	}

	@Override
	public int hashCode() {
		int result = 17;
		result += 31 * accountNumber;
		result += personalInfo.hashCode();
		result += professionalInfo.hashCode();
		result += account.hashCode();
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			// Leave empty
		} else if (obj instanceof BankAccount) {
			BankAccount comparedAccount = (BankAccount)obj;
			if (accountNumber == comparedAccount.getAccountNumber() &&
				personalInfo.equals(comparedAccount.getPersonalInfo()) &&
				professionalInfo.equals(comparedAccount.getProfessionalInfo()) &&
				account.equals(comparedAccount.getAccount())) {
				return true;
			}
		}
		return false;
	}
}
