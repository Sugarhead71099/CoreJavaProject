package account.customer;

public class CustomerInfo {
	PersonalInfo personalInfo;
	ProfessionalInfo professionalInfo;
	
	public CustomerInfo(PersonalInfo personalInfo, ProfessionalInfo professionalInfo) {
		this.personalInfo = personalInfo;
		this.professionalInfo = professionalInfo;
	}

	@Override
	public String toString() {
		return "CustomerInfo [\n    " + personalInfo + "\n    " + professionalInfo + "\n  ]";
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
	public boolean equals(Object obj) {
		if (obj == null) {
			// Leave empty
		} else {
			if (obj instanceof CustomerInfo) {
				CustomerInfo comparedCustomerInfo = (CustomerInfo)obj;
				if (personalInfo.equals(comparedCustomerInfo.getPersonalInfo()) && 
					professionalInfo.equals(comparedCustomerInfo.getProfessionalInfo())) {
					return true;
				}
			}
		}
		return false;
	}

	@Override
	public int hashCode() {
		return 17 + personalInfo.hashCode() + professionalInfo.hashCode();
	}
}
