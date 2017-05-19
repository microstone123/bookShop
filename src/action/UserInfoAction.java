package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.User;

@SuppressWarnings("serial")
public class UserInfoAction extends ActionSupport{

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String execute(){
		System.out.println("UserInfoAction execute");
//		HttpServletRequest request = ServletActionContext.getRequest();
//		HttpSession session = request.getSession();
//		user = (User)session.getAttribute("loginUser");
		return SUCCESS;
	}
}
