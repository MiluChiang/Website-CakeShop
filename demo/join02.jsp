<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<p align=center ><font size="5" face="微軟正黑體">會員註冊</font>

</td>
</tr>
<tr>
<td colspan="2" valign="top" width="800"> 
		<form method="post" action="join03.jsp">
		<p align="center">登入帳號：
            <input type="text" name="acc" size="12">
		</p>
		<p align="center">登入密碼：
            <INPUT type="password" name="pwd" size="12">
		</p>
		<p align="center">姓名：
            <input type="text" name="name" size="20">
		</p>
		<p align="center">電話號碼：
            <input type="text" name="tel" size="20">
		</p>
  		<p align="center">性別：
              <label>
              <select name="gender">
                <option value="0">女</option>
                <option value="1">男</option>
              </select>
              </label>
		</p>
  		<p align="center">地址：
            <select name="address1">
                <option value="請選擇">請選擇</option>
                <option value="基隆">基隆</option>
                <option value="台北">台北</option>
                <option value="桃園">桃園</option>
                <option value="新竹">新竹</option>
                <option value="苗栗">苗栗</option>
                <option value="台中">台中</option>
                <option value="彰化">彰化</option>
                <option value="雲林">雲林</option>
                <option value="嘉義">嘉義</option>
                <option value="台南">台南</option>
                <option value="高雄">高雄</option>
                <option value="屏東">屏東</option>
                <option value="宜蘭">宜蘭</option>
                <option value="花蓮">花蓮</option>
                <option value="台東">台東</option>
                <option value="澎湖">澎湖</option>
                <option value="金門">金門</option>
                <option value="馬祖">馬祖</option>
            </select>
        </p>
		<p align="center">
			<input type="text" name="address2" size="40" />
		</p>
		<p align="center">電子郵件：
            <input type="text" name="mail" size="20" />
		</p>
		<p align="center">
		生日:
            <select name="year">
	<%		for(int a=1980;a<=2013;a++)
                {
				out.print("<option value='"+a+"'>"+a+"</option>");
				}
     %>          
            </select>
			年
			<select name="month">
	<%		for(int a=1;a<=12;a++)
                {
				out.print("<option value='"+a+"'>"+a+"</option>");
				}
     %>          
            </select>
			月
			<select name="date">
	<%		for(int a=1;a<=31;a++)
                {
				out.print("<option value='"+a+"'>"+a+"</option>");
				}
     %>          
            </select>
			日
		</p>
		<br>
		<p align="center">
			<input type="submit" src="images/e.jpg"  width=10% height=70%/>
			
        </p>
		</form>
	  
	</b>
	</font>
    </div>
 <%-- 右邊區塊 END --%>
	  </td>
  </tr>
</table>
</form>
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