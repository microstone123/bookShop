package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.UserDAO;

import entity.User;

@SuppressWarnings("serial")
public class EditAction extends ActionSupport{

	private User user;
	private String password2;
	private UserDAO ud = new UserDAO();

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		User loginUser = (User)session.getAttribute("loginUser");
		
		if(loginUser == null){
			return LOGIN;
		}else{
			if(user.getPassword().equals("")){
				user.setPassword(loginUser.getPassword());
			}
			int id = loginUser.getId();
			user.setId(id);
			user.setUsername(loginUser.getUsername());
			int i = ud.updateUser(user);
			if(i == 0){
				return ERROR;
			}else{
				session.setAttribute("loginUser", user);
				return SUCCESS;
			}
		}
	}
	public void validate(){
		if(!(password2.equals(user.getPassword()))){
			addActionError("两次输入的密码不一致！");
		}
	}
}
