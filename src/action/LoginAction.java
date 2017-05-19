package action;

import com.opensymphony.xwork2.ActionSupport;

import dao.UserDAO;
import entity.User;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport {

	private String username;
	private String password;
	private int id;
	private User user;
	private UserDAO ud = new UserDAO();

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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public UserDAO getUd() {
		return ud;
	}

	public void setUd(UserDAO ud) {
		this.ud = ud;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String execute() {
		System.out.println("LoginAction execute");
		// user = ud.getUser(id) ;
		// HttpServletRequest request = ServletActionContext.getRequest();
		// HttpSession session = request.getSession();
		// session.setAttribute("loginUser", user);
		return SUCCESS;
	}

	public void validate() {
		System.out.println("LoginAction validate:" + username + "  password:" + password);
//		int i = ud.checkLogin(username, password);
//		if (i == 0) {
//			addActionError("用户名或密码不正确！");
//		} else {
//			id = i;
//		}
	}
}
