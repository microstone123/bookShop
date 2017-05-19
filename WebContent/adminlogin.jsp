<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE><s:text name="title"/></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>BODY {
	SCROLLBAR-FACE-COLOR: #c6ebde; FONT-SIZE: 9pt; BACKGROUND: #ffffff; SCROLLBAR-HIGHLIGHT-COLOR: #ffffff; SCROLLBAR-SHADOW-COLOR: #39867b; SCROLLBAR-3DLIGHT-COLOR: #39867b; LINE-HEIGHT: 150%; SCROLLBAR-ARROW-COLOR: #330000; SCROLLBAR-TRACK-COLOR: #e2f3f1; FONT-FAMILY: ""; SCROLLBAR-DARKSHADOW-COLOR: #ffffff; TEXT-DECORATION: none
}
TD {
	FONT-SIZE: 9pt; FONT-FAMILY: ""
}
INPUT {
	FONT-SIZE: 9pt; HEIGHT: 20px
}
BUTTON {
	FONT-SIZE: 9pt; HEIGHT: 20px
}
SELECT {
	FONT-SIZE: 9pt; HEIGHT: 20px
}
A {
	COLOR: #000000; TEXT-DECORATION: none
}
A:hover {
	COLOR: #428eff; TEXT-DECORATION: underline
}
.title {
	BACKGROUND: url(Images/topBar_bg.gif)
}
.border {
	BORDER-RIGHT: #39867b 1px solid; BORDER-TOP: #39867b 1px solid; BORDER-LEFT: #39867b 1px solid; BORDER-BOTTOM: #39867b 1px solid
}
.tdbg {
	BACKGROUND: #e1f4ee; LINE-HEIGHT: 120%
}
.topbg {
	BACKGROUND: url(Images/topbg.gif); COLOR: #ffffff
}
.bgcolor {
	BACKGROUND-COLOR: #91bce3
}
</STYLE>

<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<BODY class=bgcolor>
<P>&nbsp;</P>
<CENTER>
<P>&nbsp;</P><P>&nbsp;</P>
<TABLE style="BORDER-COLLAPSE: collapse" borderColor=#6699cc cellSpacing=1 
cellPadding=4 width=450 align=center border=1>
  <TBODY>
  <TR vAlign=baseline>
    <TD align=right background=images/b1.gif>
      <DIV align=center><FONT style="FONT-SIZE: 10.5pt" 
      color=#000000><STRONG><s:text name="title"/></STRONG></FONT></DIV></TD></TR>
  <TR vAlign=baseline>
    <TD vAlign=center align=middle bgColor=#eff1f3 height=60>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=20></TD>
          <TD width=150>
            <DIV align=center><IMG height=100 src="images/admin_p.gif" 
            width=90 border=0> </DIV></TD>
          <TD width=280>
            <FORM 
            action="AdminLogin.action" method=post target=_parent>
            <TABLE cellSpacing=8 cellPadding=0 width="100%" align=center 
            border=0>
              <TBODY>
              <TR align=middle>
                <TD colSpan=2 height=38><FONT color=#000000 
                  size=3><STRONG><s:text name="title"/></STRONG></FONT> </TD></TR>
              <TR>
                <TD align=right><FONT color=#000000><s:text name="username"/></FONT></TD>
                <TD><INPUT id=UserName4 
                  onmouseover="this.style.background='#FDE8FE';" 
                  style="BORDER-RIGHT: 1px solid; PADDING-RIGHT: 4px; BORDER-TOP: 1px solid; PADDING-LEFT: 4px; PADDING-BOTTOM: 1px; BORDER-LEFT: 1px solid; WIDTH: 160px; PADDING-TOP: 1px; BORDER-BOTTOM: 1px solid" 
                  onfocus="this.select(); " 
                  onmouseout="this.style.background='#FFFFFF'" maxLength=20 
                  name="username" value="<s:property value="username"/>"></TD></TR>
              <TR>
                <TD align=right><FONT color=#000000><s:text name="password"/></FONT></TD>
                <TD><INPUT onMouseOver="this.style.background='#FDE8FE';" 
                  style="BORDER-RIGHT: 1px solid; PADDING-RIGHT: 4px; BORDER-TOP: 1px solid; PADDING-LEFT: 4px; PADDING-BOTTOM: 1px; BORDER-LEFT: 1px solid; WIDTH: 160px; PADDING-TOP: 1px; BORDER-BOTTOM: 1px solid" 
                  onfocus="this.select(); " 
                  onmouseout="this.style.background='#FFFFFF'" type=password 
                  maxLength=20 name="password"></TD></TR>
              <TR>
                <TD colspan="2" align=right height=20><FONT color=#ff0000><s:property value="msg"/></FONT></TD>
                </TR>
              <TR>
                <TD colSpan=2>
                  <DIV align=center>&nbsp;&nbsp;&nbsp;&nbsp; <INPUT onMouseOver="this.style.backgroundColor='#ffffff'" style="FONT-SIZE: 9pt;  COLOR: rgb(0,0,0); HEIGHT: 22px; BACKGROUND-COLOR: rgb(255,204,255)" onMouseOut="this.style.backgroundColor='#FFCCFF'" type=submit value="<s:text name="loginbutton"/>" name=Submit> 
                &nbsp; <BR></DIV></TD></TR></TBODY></TABLE></FORM></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><BR><A 
href="#"><FONT 
color=#990000><B></B></FONT></A> <A 
href="#"><FONT 
color=#990000><B></B></FONT></A> </CENTER>
<P align=center>&nbsp;</P>
</BODY></HTML>
