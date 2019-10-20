package cn.cslg.enity;

public class Employee {
	private String empId;
	private String empName;
	private String job;
	private double salary;
	private String dept;

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public Employee(String empId, String empName, String job, double salary, String dept) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.job = job;
		this.salary = salary;
		this.dept = dept;
	}

	public Employee() {
	}

}
