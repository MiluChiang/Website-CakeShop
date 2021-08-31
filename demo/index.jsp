<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
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
WELCOME TO CAKE SHOP
</title>
<body bgcolor="#000000">
<br>
<H5 align="right"><FONT  Color=#FF0000 ><A HREF="order02.jsp" style="color:FFFFFF;"><STRONG>購物車&nbsp&nbsp</STRONG></A>

<table border="0" cellpadding="0" cellspacing="0" width="100%" >
	<!--跨三行-->
	<tr>
		<td colspan="3" valign="top">
	
	<!--顯示輸入帳號的區塊div-->
		<div align="right">
 
<%		

	if( session.getAttribute("user") != null ){
			out.print("<font color=#FFFFFF>hi，" + session.getAttribute("user") + " </font> ");
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

</TABLE>
<table style="border:3px #FFD382 dashed;" cellpadding="10" border='1' width="1050" height="600" align=center>
<tr>
<td width="300">
<ol>
<p align=center>
<li><A HREF="cake.jsp"target="_blank" onMouseOver="clickChange('cake/1.gif');"onmouseout="clickChange('cake/1.gif');return false;" ><font color=#FF8888 face="微軟正黑體" size="4">★提拉米蘇</font></A></li>
<li><A HREF="cake.jsp"target="_blank" onMouseOver="clickChange('cake/2.gif');"onmouseout="clickChange('cake/2.gif');return false;"><font color=#FFFF00 face="微軟正黑體" size="4">★黑森林櫻桃巧克力</font></A></li>
<li><A HREF="cake.jsp"target="_blank" onMouseOver="clickChange('cake/3.gif');"onmouseout="clickChange('cake/3.gif');return false;" ><font color=#00AA00 face="微軟正黑體" size="4">★草莓波士頓派</font></A></li>
<li><A HREF="cake.jsp"target="_blank" onMouseOver="clickChange('cake/4.gif');"onmouseout="clickChange('cake/4.gif');return false;" ><font color=#33CCFF face="微軟正黑體" size="4">★水果塔</font></A></li>
<li><A HREF="cake.jsp"target="_blank" onMouseOver="clickChange('cake/5.gif');"onmouseout="clickChange('cake/5.gif');return false;" ><font color=#7744FF face="微軟正黑體" size="4">★繽紛Macaron</font></A></li>
</ol>
</p>
</td>
<td>
<IMG SRC="cake/1.gif"border="0" name="myImage" width="750" height="550">
</td>
</tr>
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
<!-- 計數器原始碼開始 -->
<p align=left><script src="http://counter.i2yes.com/i2yesCounter.js" type="text/javascript"></script>
<script type="text/javascript">document.write(i2yesCounter.render({ y:'counter',
p:'123', //改成您專有的計數器名稱,注意別跟別人一樣
v:'http://localhost:8080/0626/index.jsp', //您的網址,不對的話無法使用,也可以用沒有 www 的網址,如 i2yes.com
d:4, //數字位數
r:1, //1=不接受Reload,0=Reload會+1
t:'font005', //字型 font001 - font156 可用
s:100,  //指定大小,只能輸入數字例;100, 0為不指定尺寸(原寸)
n:0	//指定起始的數字
}));</script>
</p>
<!-- 計數器原始碼結束 -->

</body
</html>