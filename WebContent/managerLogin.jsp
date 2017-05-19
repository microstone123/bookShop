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
		<!--顶部-->
		<div id="header">
			<div class="h_lt">
				<a href="http://www.itzcn.com"><img src="images/logo.gif" />
				</a>
			</div>
			<div class="h_rt">
				您好，
				<s:if test="%{#session.loginManager != null}">
					<s:property value="#session.loginManager.username" />
					|
					<a href="#">退出</a> |
					<a href="#">个人中心</a>	
				</s:if>
				<s:else>
					请
					<a href="register.jsp">注册</a> 或
					<a href="login.jsp">登录</a>					
				</s:else>
				|
				<a href="http://school.itzcn.com/help.html" target=_blank>帮助中心</a> |
				<s:a
					onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.itzcn.com')"
					href="#">设为首页</s:a>
				|
				<s:a
					onclick="javascript:window.external.AddFavorite('http://www.itzcn.com/','窗内网')"
					href="#">加入收藏</s:a>
			</div>
			<div class="clear"></div>
		</div>
		<div style="width: 1000px;">
			<center>
			<ul style="width: 400px;">
				<li style="float: left;width: 100px;">
					<img src="images/admin_p.gif"/>
				</li>
				<li style="float: left;width: 300px;">
					<h3>管理员登录</h3>
					<s:form action="managerLogin">
						<s:textfield name="username" label="用户名"/>
						<s:password name="password" label="密码"/>
						<s:submit value="登录"/>
						<s:actionerror/>
					</s:form>
				</li>
			</ul>
			</center>
		</div>
		
		
		</body>
</html>		
