package performeter.beans;

public class EmployeeLogin {
	
	private int employeeId;
	private String employeePassword;
	private String message;
	
	public EmployeeLogin(int employeeID,String employeePassword){
		this.employeeId = employeeID;
		this.employeePassword = employeePassword;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
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
		
		if(employeeId==0){
			message = "Please enter Employee ID";
			return false;
		}
		else if(employeeId==-999){
			message= "Please enter a valid employee Id";
			return false;
		}
		else if(employeePassword==null || employeePassword==""){
			message = "Please enter Password";
			return false;
		}
		return true;
	}
}
