package action;

import com.opensymphony.xwork2.ActionSupport;

import dao.UserDAO;

import entity.User;

import java.util.List;
@SuppressWarnings("serial")
public class UserListAction extends ActionSupport{
	private int pageNumber;
	private int pageSize;
	private int totalPage;
	private List<User> userList;
	private UserDAO ud = new UserDAO();
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	public String execute(){
		userList = ud.getUserList(pageNumber, pageSize);
		return SUCCESS;
	}
}
