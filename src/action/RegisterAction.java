package action;

import com.opensymphony.xwork2.ActionSupport;

import dao.UserDAO;

import entity.User;

@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport {

	private User register;
	private String password2;
	private UserDAO ud = new UserDAO();



	public User getRegister() {
		return register;
	}

	public void setRegister(User register) {
		this.register = register;
	}

	public UserDAO getUd() {
		return ud;
	}

	public void setUd(UserDAO ud) {
		this.ud = ud;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String execute() {
		int i = ud.saveUser(register);
		if(i == 1){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public void validate(){
		int i = ud.checkUsername(register.getUsername());
		if(i == 1){
			addActionError("���û����Ѿ����ڣ�");
		}else if(!(register.getPassword().equals(password2))){
			addActionError("������������벻һ�£�");
		}
	}
}
