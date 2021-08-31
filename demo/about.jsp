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
ABOUT US
</title>


<body bgcolor="#000000">

<br>
<H5 align="right"><FONT  Color=#FF0000 ><A HREF="cart.jsp" style="color:FFFFFF;"><STRONG>購物車&nbsp&nbsp</STRONG></A>

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
<table style="border:3px #FF8888 dashed;border-radius:20px" cellpadding="10" border='1' width="900" height="500" align=center >
<tr>
<td width="400" height="400" align=center>
<marquee onMouseOver="this.stop()" onMouseOut="this.start()" direction="up" height="400" scrollamount="5"><img src="image/Q.jpg" width="50" height="50"> <FONT  Color=#FFFFFF face="微軟正黑體">
<font color=#9291FF face="微軟正黑體"><STRONG>李明潔:</font><a href="https://www.facebook.com/li.cha.58?fref=ts" target="_blank"><img src="image/fbb.jpg" width="70" height="70" ></a><Br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp10244121<Br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp中原大學<Br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp資訊管理學系二年級
<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</STRONG>
</FONT></marquee>
</td>
<td width="300" height="400" align=center> 
<IMG SRC="image/to1.jpg" align=center  width="300" height="400">
</td>
<td width="400" height="400" align=center>
<marquee onMouseOver="this.stop()" onMouseOut="this.start()" direction="up" height="400" scrollamount="5" ><img src="image/Q.jpg" width="50" height="50" ><FONT  Color=#FFFFFF face="微軟正黑體">
<font color=#9291FF face="微軟正黑體"><STRONG>江玫儒:</font><a href="https://www.facebook.com/profile.php?id=100001921877929" target="_blank"><img src="image/fb.jpg" width="70" height="70" ></a><Br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp10244147<Br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp中原大學<Br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp資訊管理學系二年級
<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</STRONG>
</FONT></marquee>
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
</body>
</html>




