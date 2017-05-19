package action;

import com.opensymphony.xwork2.ActionSupport;

import entity.Washing;

@SuppressWarnings("serial")
public class WashingInfoAction extends ActionSupport {
	private Washing washing;

	public Washing getWashing() {
		return washing;
	}

	public void setWashing(Washing washing) {
		this.washing = washing;
	}

	public String execute() {
		System.out.println("WashingInfoAction execute");
		// HttpServletRequest request = ServletActionContext.getRequest();
		// HttpSession session = request.getSession();
		// user = (User)session.getAttribute("loginUser");
		return SUCCESS;
	}
}
