<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<style>
#header_daohang{
    height:30px;
    width:770px;
    background-color:#ededed;
    margin:3px auto;
    font-size: 12px;
    line-height: 30px;
}
#header_daohang li{
    list-style-type:none;
    width:100px;
    padding:0px;
    float: left;
    text-align: center;
    margin: 0px;
}
#header_admin_daohang{
    height:30px;
    width:770px;
	background-image:url(manager/images/foot_bg.gif);
    margin:3px auto;
    font-size: 12px;
    line-height: 30px;
}

#header_admin_daohang li{
    list-style-type:none;
    width:100px;
    padding:0px;
    float: left;
    text-align: center;
    margin: 0px;
}

</style>
<div id="header_daohang" >
    <ul style="margin:0px; padding:0px;">
        <li style="width:240px;">2009年5月5日 星期二 6:14:15 PM</li>
        <li><s:a href="#">责任声明</s:a></li>
        <li><img src="manager/images\home.gif" /> <s:a href="#">设为首页</s:a></li>
        <li><img src="manager/images\fav.gif" /> <s:a href="#">加入收藏</s:a></li>
        <li><img src="manager/images\email.gif" /> <s:a href="#">站长信箱</s:a></li>
        <li><img src="manager/images\cont.gif" /> <s:a href="#">联系我们</s:a></li>
    </ul>
</div>
<div id="header_logo">
	<div style="width:180px; float: left;"><img style="margin-left:30px; float:left" src="manager/images/logo.gif"  border="0" />
	</div>
    <div style="width:590px; float: left;"></div>
</div>
<div id="header_admin_daohang">
	<ul style="margin:0px; padding:0px;">
        <li><s:a href="#">公告管理</s:a></li>
        <li><s:a href="#">用户管理</s:a></li>
        <li><s:a href="#">信息检索</s:a></li>
        <li><s:a href="#">其他管理</s:a></li>
        <li><s:a href="#">加入收藏</s:a></li>
        <li><s:a href="#">站长信箱</s:a></li>
        <li><s:a href="#">联系我们</s:a></li>
    </ul>
</div>


