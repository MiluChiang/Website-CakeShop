<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.util.*"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
INTRODUCE CAKE
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
    <a href="index.jsp"><img src="image/news.jpg" border="0" onmouseover="this.src='image/news.gif';" onmouseout="this.src='image/news.jpg';" width="220" height="100" align=middle /></a>
    <a href="cake.jsp"><img src="image/cake.jpg" border="0" onmouseover="this.src='image/cake.gif';" onmouseout="this.src='image/cake.jpg';" width="220" height="100" align=middle></a>
    <a href="message/msg01.jsp"><img src="image/contact.jpg" border="0" onmouseover="this.src='image/contact.gif';" onmouseout="this.src='image/contact.jpg';"width="220" height="100" align=middle></a>
    <a href="about.jsp"><img src="image/about.jpg" border="0" onmouseover="this.src='image/about.gif';" onmouseout="this.src='image/about.jpg';"width="220" height="100" align=middle></a>

   </TD>
      </TR>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use db";
con.createStatement().execute(sql);
%>
<%
request.setCharacterEncoding("big5");
request.getSession(true);
int left;
String leftString;
sql="select * from product";
ResultSet rs=con.createStatement().executeQuery(sql);


%>

<%
 while(rs.next()){%>	  
 <form  method="post" action="buy1.jsp">
<table style="border:2px #FFD382 dashed;border-radius:10px;width:1000px;height:250px;background-color:#eee;" cellpadding="10" border='1' align=center >
<tr>
<td rowspan="6" width=500><img src="cake/<%=rs.getString(1)%>.jpg" width="200" height="200" align=center></td>
<td bgcolor=#FFD382><font color=#000000 face="微軟正黑體">名稱：<%=rs.getString(2)%></font></td>
<tr>
<td bgcolor=#dddddd><font color=#000000 face="微軟正黑體">價格：<%=rs.getString(3)%></font></td>
</tr>
<tr>
<td bgcolor=#dddddd><font color=#000000 face="微軟正黑體">剩餘數量：<%=rs.getString(4)%></font></td>
</tr>
<tr>
<td bgcolor=#dddddd><font color=#000000 face="微軟正黑體">熱量：<%=rs.getString(5)%></font></td>
</tr>
<tr>
<td bgcolor=#dddddd><font color=#000000 face="微軟正黑體">評價：★★★★★</font></td>
</tr>
<tr>

<td bgcolor=#dddddd>

<p> <input type="checkbox" name="Product_Id" value="<%=rs.getString(1)%>">buy it</td>
</tr>
</tr>
</table>

	  
<% }%>	 

<div align="center">
<input type="submit" value="立即購買" />
</div>
</form>
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

<body>

</body
</html>