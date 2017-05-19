package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.UserDAO;
import entity.Manager;

@SuppressWarnings("serial")
public class ManagerLoginAction extends ActionSupport{

	private String username;
	private String password;
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

	public String execute(){
		return SUCCESS;
	}
	
	public void validate(){
		Manager manager = ud.checkManagerLogin(username, password);
		if(manager != null){
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			session.setAttribute("loginManager", manager);
		}else{
			addActionError("用户名或密码错误！");
		}
	}
}
