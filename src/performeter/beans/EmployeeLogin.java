package performeter.beans;

public class EmployeeLogin {
	
	private String employeeId;
	private String employeePassword;
	private String message;
	
	public EmployeeLogin(String employeeID,String employeePassword){
		this.employeeId = employeeID;
		this.employeePassword = employeePassword;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeePassword() {
		return employeePassword;
	}

	public void setEmployeePassword(String employeePassword) {
		this.employeePassword = employeePassword;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public boolean validate(){
		
		if(employeeId==null || employeeId==""){
			message = "Please enter Employee ID";
			return false;
		}
		else if(employeePassword==null || employeePassword==""){
			message = "Please enter Password";
			return false;
		}
		return true;
	}
}
