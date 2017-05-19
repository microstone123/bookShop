<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<s:head theme="ajax" />
		<title>欢迎注册</title>
		<link rel="stylesheet" type="text/css" href="reg.css">

	</head>
	<body>
		<center>
			<script src="js/common.js"></script>
			<script src="js/ajax.js"></script>
			<script src="js/menu.js"></script>
			<!--顶部-->
			<div id="header">
				<div class="h_lt">
					<a href="http://www.itzcn.com"><img src="images/logo.gif" /> </a>
				</div>
				<div class="h_rt">
					您好，
					<s:property value="#session.loginUser.username" />
					|
					<a href="#">退出</a> |
					<a href="#">个人中心</a> 请
					<A href="register.jsp">注册</A> 或
					<A href="login.jsp">登录</A>
					<!--{/if}-->
					|
					<A href="http://school.itzcn.com/help.html" target=_blank>帮助中心</A>
					|
					<A
						onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('{$site_url}')"
						href="#">设为首页</A> |
					<A
						href="javascript:window.external.addfavorite('{$SiteURL}','$seo_title')">加入收藏</A>
				</div>
			</div>
			<!--顶部-->
			<!--中间-->
			<div id="center">
				<!--中左-->
				<div class="c_lt">
					<h3>操作出现异常！</h3>
				</div>
				<!--中左-->
				<!--中右-->
				<div class="c_rt">
					<ul>
						<li>
							<b><a href="http://school.itzcn.com">我要学编程</a> </b>
							<p>
								免费看视频，轻松学编程
							</p>
						</li>
						<li class="zq">
							<b><a href="http://home.itzcn.com">我想交朋友</a> </b>
							<p>
								窗内——真实的社交网络
							</p>
						</li>
						<li class="sj">
							<b>你知道这些数据吗？</b>
							<p>
								窗内网目前汇集:
								<font color="#FE5301">92166</font>个人才&nbsp;&nbsp;&nbsp;共有:
								<font color="#FE5301">4314</font>个视频
							</p>
						</li>
					</ul>
				</div>


				<!--中右-->
				<div class="clear"></div>
			</div>
			<!--中间-->
			<!--底部-->
			<div id="foot">
				<div class="bh">
					<div class="lt">
						新书上架:
					</div>
					<div id=demo
						style="overflow: hidden; height: 33px; width: 670px; margin: 0;">
					</div>
				</div>
				<div class="cop">
					<P>
						<EM>Copyrights Reserved 2005-2010</EM> 窗内网(
						<EM>www.itzcn.com</EM>)
						<br>
						豫
						<EM>ICP08104500</EM>号
					</P>
				</div>
				<div class="clear"></div>
			</div>
			<!--底部-->
		</center>
	</body>
</html>