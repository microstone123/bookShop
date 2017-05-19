<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<style type="text/css">
#left{
	background-image:url(manager/images/left.jpg);
	background-repeat:no-repeat;
	height:400px;
	width:150px;
	float:left;
	margin-left:6px;
	font-size:12px;
}
#right{
	height:400px;
	width:620px;
	float:left;
}
li{
	margin:0px;
	padding:5px 5px 5px 25px;
	list-style-type:none;
	text-align:left
}
*{
	margin:0px;
	padding:0px;
}
a,a:link,a:visited{
	text-decoration:none;
	color:#000;
}
a:hover{
	text-decoration:underline;
	color:#cc0000;
}
#container{
	width:780px;
	margin:0px auto;
}
#container_admin {
	width: 615px;
	margin: 0px auto;
	background-image: url(manager/images/right.jpg);
	background-repeat: no-repeat;
}

.bulletin {
	width: 615px;
	margin: 0px auto;
	font-size: 12px;
}
.bulletin ul{
	width: 600px;
	margin: 0px;
	padding: 0px;
}
.id {
	list-style-type: none;
	width: 40px;
	text-align: center;
	float: left
}

.title {
	list-style: none;
	width: 120px;
	text-align: left;
	float: left
}

.time {
	list-style: none;
	width: 120px;
	text-align: left;
	float: left
}

.author {
	list-style: none;
	text-align: left;
	float: left;
	width: 80px;
}

.oper {
	list-style: none;
	width:70px;
	float: left;
	text-align: left;
}

</style>

<div id="container">
<%@ include file="header.jsp"%>
	<div id="left">
    	<div style="margin:8px 20px 0px 0px ; font-weight:bold; color:#FFF; font-size:13px;text-align:center">管理中心</div>
        <div style="margin:30px 0px 0px 0px">
        	<ul style="margin:0px; padding:0px;">
            	<li><img src="manager/images/left.gif" /> <a href="#">公告信息管理</a></li>
                <li><img src="manager/images/left.gif" /> <a href="#">用户信息管理</a></li>
                <li><img src="manager/images/left.gif" /> <a href="#">站长信箱</a></li>
                <li><img src="manager/images/left.gif" /> <a href="#">联系我们</a></li>
                <li><img src="manager/images/left.gif" /> <a href="#">管理员管理</a></li>
                <li><img src="manager/images/left.gif" /> <a href="#">意见反馈管理</a></li>
                <li><img src="manager/images/left.gif" /> <a href="exit.action">安全退出系统</a></li>
            </ul>
        </div>
    </div>
    
    <div id="right">
<script>
	function doHidden(id){
		var obj=document.getElementById(id);
		obj.style.display=obj.style.display=='none'?'block':'none';
	}
</script>    
    	<div id="container_admin" style="height: 400px;">
			<div
				style="height: 40px; line-height: 50px; font-family: '幼圆'; padding-left: 50px; font-size: 13px; color: #2a569d; background-image: url(manager/images/head.gif); background-repeat: no-repeat">
				用户信息管理 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单击【用户名】查看详细信息
			</div>
			<div
				style="color: #FF0000; height: 20px; text-align: center; font-size: 12px; line-height: 20px;">
				<s:property value="msg" />
			</div>
			<div id="bulletin_admin" style="border-right: 1px solid #9cb2d7;">
				<div class="bulletin" style="border-bottom: 1px solid #CCC">
					<ul>
						<li class="id">
							ID
						</li>
						<li class="title">
							用户名 /昵称
						</li>
						<li class="time">
							注册时间
						</li>
						<li class="author">
							性别
						</li>
						<li class="oper">
							操作
						</li>
					</ul>
				</div>
				<s:iterator value="userList">
					<div class="bulletin"
						style="height: 30px; border-bottom: 1px dashed #063; line-height: 20px;">
						<ul>
							<li class="id">
								<s:property value="id" />
							</li>
							<li class="title">
								<a style="cursor: hand"
									onclick="doHidden(<s:property value="id"/>)"> <s:property
										value="username" /> /<s:property value="nickname" /> </a>
							</li>
							<li class="time">
								<s:date name="regtime"/>
							</li>
							<li class="author">
								<s:property value="gender" />
							</li>
							<li class="oper">
								<a href="deleteUser.action?id=<s:property value="id"/>">删除</a>
							</li>
						</ul>
					</div>
					<div id="<s:property value="id"/>"
						style="border: 1px solid #800000; display: none; font-size: 12px; padding: 6px; margin: 6px auto; width: 580px;">
							<span style="width: 140px; float: left">邮箱：<s:property
									value="email" />
							</span>
							<span style="width: 120px; float: left">生日：<s:date name="birthday" format="yyyy-MM-dd"/>
							</span>
							<span style="width: 110px; float: left">ＱＱ：<s:property
									value="qq" />
							</span>
							<span style="width: 120px; float: left">电话：<s:property
									value="phone" />
							</span>
							<span style="width: 300px; float: left">自我介绍：<s:property value="description" />
							</span>
					</div>
				</s:iterator>
			</div>

			<div style="text-align: center; font-size: 12px; height: 30px;">
				<s:property value="pageNumber"/>|<s:property value="totalPage"/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
				<s:url id="firstPage" action='page'>
					<s:param name='pageNumber'>1</s:param>
				</s:url>
				<s:a href="%{firstPage}">首页</s:a>
				
				<s:url id="prePage" action='page'>
					<s:param name='pageNumber'><s:property value='pageNumber-1'/></s:param>
				</s:url>
				<s:a  href="%{prePage}">上一页</s:a>
				
				<s:url id="nextPage" action='page'>
					<s:param name='pageNumber'><s:property value='pageNumber+1'/></s:param>
				</s:url>
				<s:a href="%{nextPage}">下一页</s:a>
				
				<s:url id="lastPage" action='page'>
					<s:param name='pageNumber'><s:property value='totalPage'/></s:param>
				</s:url>
				<s:a  href="%{lastPage}">末页</s:a>
			</div>
		</div>
    </div>
    
    <%@ include file="footer.jsp"%>
</div>
