package isepwebproject.model;

public class UserBean {
    private int UserId;
    private String UserName;
    private String PassWord;
    private int Authority;
	public UserBean() {
		// TODO Auto-generated constructor stub
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassWord() {
		return PassWord;
	}
	public void setPassWord(String passWord) {
		PassWord = passWord;
	}
	public int getAuthority() {
		return Authority;
	}
	public void setAuthority(int authority) {
		Authority = authority;
	}
	

}
