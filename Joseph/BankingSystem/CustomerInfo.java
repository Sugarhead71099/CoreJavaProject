package joseph.banking;

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
	
}
