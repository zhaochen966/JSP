package cn.cslg.bean;

public class UserInformation {
	private String name;
	private String password;
	private String sex;
	private String[] hobby=null;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public UserInformation(String name, String password, String sex, String[] hobby) {
		super();
		this.name = name;
		this.password = password;
		this.sex = sex;
		this.hobby = hobby;
	}

	public UserInformation() {

	}
}
