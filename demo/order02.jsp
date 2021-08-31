<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<%@include file="dbcon.jsp" %>

<html>
<head>
<style>
a{text-decoration:none}
</style>
<SCRIPT Language="JavaScript">
<!--
function clickChange(imageNum)
{
	if (document.images) document.myImage.src = imageNum;
}
// -->
</SCRIPT>


</head>
<title>
REGISTER
</title>
<body bgcolor="#000000">
<br>
<H5 align="right"><FONT  Color=#FF0000 ><A HREF="cart.jsp" style="color:FFFFFF;"><STRONG>購物車&nbsp&nbsp</STRONG></a></A>
<table border="0" cellpadding="0" cellspacing="0" width="100%" >
	<!--跨三行-->
	<tr>

		<td colspan="3" valign="top">
	
	<!--顯示輸入帳號的區塊div-->
		<div align="right">
 
<%
	if( session.getAttribute("user") != null ){
			out.print("<font color=#FFFFFF>hi，" + session.getAttribute("user") + " </font>");
			out.print("[<a href='logout.jsp'>登出</a>]");
			
	}else{
	
%>

<form name="form1" method="post" action="login.jsp">
    <table width="600" border="0">
    <tr>
        <td><b><font face="華康采風體W3" size=4 color=#FFFFFF>會員登入</font></b></td>
		<td><b><font size="3" face="華康采風體W3" color=#FFFFFF>帳號</font></b></td>
        <td><label>
          <input name="acc" type="text" size="10">
			</label></td>
        <td><b><font size="3" face="華康采風體W3" color=#FFFFFF>密碼</font></b></td>
        <td><label>
          <input name="pwd" type="password" size="10">
          <input type="submit" name="Submit" value="送出">
		<td>
		<a href="join02.jsp"><font size="3" face="華康采風體W3" color=#FFFFFF>會員註冊</font></b>
		</td>
			</label></td>
	</tr>
	</table>
</form>

<% } %>
</H5>
<TABLE align=center width=1000 >

  <TR>
   <TD VALIGN="TOP" nowrap>
	<a href="index.jsp"><img src="image/logo.png" width="125" height="125" align=center></a>&nbsp&nbsp&nbsp
    <a href="index.jsp"><img src="image/news.jpg" border="0" onmouseover="this.src='image/news.gif';" onmouseout="this.src='image/news.jpg';" width="220" height="100" align=middle></a>
    <a href="cake.jsp"><img src="image/cake.jpg" border="0" onmouseover="this.src='image/cake.gif';" onmouseout="this.src='image/cake.jpg';" width="220" height="100" align=middle></a>
    <a href="message/msg01.jsp"><img src="image/contact.jpg" border="0" onmouseover="this.src='image/contact.gif';" onmouseout="this.src='image/contact.jpg';"width="220" height="100" align=middle></a>
    <a href="about.jsp"><img src="image/about.jpg" border="0" onmouseover="this.src='image/about.gif';" onmouseout="this.src='image/about.jpg';"width="220" height="100" align=middle></a>

   </TD>
      </TR>
<table width="50%" height="50%" align="center" style="border:2px #ccc solid;border-radius:15px;width:800px;height:300px;background-color:#DDD;" >

<tr>
<td bgcolor=#FFB0AF height=50>
<p align=center ><font size="5" face="微軟正黑體">貼心小提醒</font>

</td>
</tr>
	
 <%-- 右邊區塊 START --%>
<!--判斷是否為會員-->
<tr>
<%
	if( session.getAttribute("user") == null ){
			out.print("<td colspan='2' valign='top' width='800'><div align='center'>");
			out.print("<p align='center'><font face='華康采風體W3' size='6'><b>");
			out.print("您尚未登入系統，不能使用訂購服務，<br />若您已是會員，<br />要訂購商品請先登入。<br />");
			out.print("</b></font></p>");
	}else{
	response.sendRedirect("buy1.jsp") ;
	}
	
%>
   

	</td>
  </tr>
</table>
</table>

<style type=text/css> 
body{

background-image:url(image/b.png); /*背景圖存放路徑*/

background-attachment:fixed; /*背景固定*/

background-repeat:no-repeat; /*背景圖不要重複*/

background-position:bottom right; /*置放位置 下面 左邊*/

} 
html{
	cursor:url(http://abgne.myweb.hinet.net/mouse/point.cur),default;
}
a{
	cursor:url(http://abgne.myweb.hinet.net/mouse/link.cur),default;
}
</style>
</body>
</html>