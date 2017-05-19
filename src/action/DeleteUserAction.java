package action;

import com.opensymphony.xwork2.ActionSupport;

import dao.UserDAO;

@SuppressWarnings("serial")
public class DeleteUserAction extends ActionSupport{

	private int id;
	private UserDAO ud = new UserDAO();
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String execute(){
		int i = ud.deleteUser(id);
		if(i == 0){
			return ERROR;
		}else{
			return SUCCESS;
		}
	}
}
