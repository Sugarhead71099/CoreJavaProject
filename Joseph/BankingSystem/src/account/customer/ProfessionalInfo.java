package account.customer;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class ProfessionalInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name = "PROFESSION")
	String profession;
	@Column(name = "INCOME")
	private int income;
	
	// Constructor
	public ProfessionalInfo() {
		
	}
	
	public ProfessionalInfo(String profession, int income) {
		this.profession = profession;
		this.income = income;
	}

	// Getter & Setter
	public String getProfession() {
		return profession;
	}
	public void setProfessional(String profession) {
		this.profession = profession;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}

	@Override
	public String toString() {
		return "ProfessionalInfo [ profession=" + profession + ", income=" + income + " ]";
	}

	@Override
	public int hashCode() {
		return 31 + profession.hashCode() + income;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			// Leave empty
		} else {
			if (obj instanceof ProfessionalInfo) {
				ProfessionalInfo comparedProfessionalInfo = (ProfessionalInfo)obj;
				if (profession.equals(comparedProfessionalInfo.getProfession()) &&
					income == comparedProfessionalInfo.getIncome()) {
					return true;
				}
			}
		}
		return false;
	}
	
}
