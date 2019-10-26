package cn.cslg.exp7;

public class UserBean {
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserBean(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public UserBean(){}

	@Override
	public String toString() {
		return "UserBean [username=" + username + ", password=" + password + "]";
	}
}
