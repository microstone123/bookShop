package action;


import com.opensymphony.xwork2.ActionSupport;

import dao.UserDAO;

@SuppressWarnings("serial")
public class PageAction extends ActionSupport {

	private int pageNumber;
	private int totalPage;
	private int pageSize;
	private UserDAO ud = new UserDAO();

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

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

	public String execute() {
		pageSize = 10;
		int userAmount = ud.getUserAmount();
		this.totalPage = userAmount % pageSize == 0 ? (userAmount / pageSize) : (userAmount / pageSize + 1);
		if(pageNumber == 0){
			pageNumber = 1;
		}
		if (this.pageNumber < 1) {
			this.pageNumber = 1;
		}
		if (this.pageNumber > totalPage) {
			this.pageNumber = totalPage;
		}
		return SUCCESS;
	}
}
