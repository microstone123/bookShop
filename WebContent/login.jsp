<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录_窗内网</title>
<link href="login2.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<div class="lad_rt">
		<div class="top">
			<a href="http://www.itzcn.com/mywk.html" target="_blank"><img
				border="0" src="images/user_dlx.gif" alt="下一个会是谁？" /> </a>
		</div>
		<div class="top2">
			<a href="http://u.itzcn.com/space-243045.html" target="_blank"><img
				border="0" src="images/user_dl.gif" /> </a>
		</div>

		<s:form action="login" theme="simple">
			<p style="margin-top: 20px;">
				用户名：
				<s:textfield name="username" />
			</p>
			<p>
				密 码：
				<s:password name="password" />
			</p>
			<p style="padding: 2px 0px 6px 45px; text-indent: -3px;"></p>
			<p style="margin: 0px 0px 10px 50px; color: red"></p>

			<p style="text-indent: 40px;">
				<s:submit type="image" src="images/dl.gif"
					cssStyle="width:81px;height:35px;" />
				<s:actionerror />
			</p>
		</s:form>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	</div>
	<!--底部-->
</body>
</html>