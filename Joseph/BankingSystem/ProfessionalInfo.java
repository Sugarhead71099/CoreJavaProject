package joseph.banking;

public class ProfessionalInfo {
	String profession;
	private int income;
	
	// Constructor
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
	
}
