<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<table width="50%" height="50%" align="center" style="border:2px #ccc solid;border-radius:15px;width:800px;height:300px;background-color:#DDD;" >

<tr>
<td colspan="2" bgcolor=#FFB0AF height=50>
<p   align=center ><font size="5" face="微軟正黑體">訂購單</font>

</td>
</tr>
  <%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use db";
           con.createStatement().execute(sql);
		   String buyer_phone = new String(request.getParameter("buyer_phone").getBytes("ISO-8859-1"),"UTF-8");
		   String pay_way = new String(request.getParameter("pay_way").getBytes("ISO-8859-1"),"UTF-8");
		   String receivr_name = new String(request.getParameter("receivr_name").getBytes("ISO-8859-1"),"UTF-8");
		   String receivr_addr = new String(request.getParameter("receivr_addr").getBytes("ISO-8859-1"),"UTF-8"); 
		  
//Step 4: 執行 SQL 指令	
           sql="insert buyer (buyer_phone, pay_way, receivr_name, receivr_addr  , buy_product ) ";
           sql+="value ('" + buyer_phone + "', ";
           sql+="'"+pay_way+"', ";
           sql+="'"+receivr_name+"', "; 
		   sql+="'"+receivr_addr+"', "; 
		   
		   sql+="'"+session.getAttribute("buy_product")+"')";     

           con.createStatement().execute(sql);
		   
%>
<tr>
<td>
<center>
  <tr>
    <th width="184" height="30" scope="row">member account：</th>
    <td width="433"><center><%=session.getAttribute("user")%></center></span></td>
  </tr>
  <tr>
    <th height="33" scope="row">member tel：</th>
    <td>
    <center><% out.println(buyer_phone);%></center>
    </span></td>
  </tr>
  <tr>
    <th height="34" scope="row">receiver name：</th>
    <td>
      <center><% out.println(receivr_name);%></center>
    </span></span></td>
  </tr>
  <tr>
    <th height="31" scope="row">meber pay way：</th>
    <td>
      <center>
      <% out.println(pay_way);%></center>
    </span></td>
  </tr>
  <tr>
    <th height="32" scope="row">receiver address：</th>
    <td>
    <center><% out.println(receivr_addr); %></center>
    </span></td>
  </tr>
  <tr>
  <td colspan="2">
<p>&nbsp;</p>
<p align=center><strong>Total：</strong><b><font face="Dotum"><font color="#0000FF" ><%=session.getAttribute("total") %></font></font></b></p>
</center>
</td>
</tr>
<p>&nbsp;</p>
<tr>
<td colspan="2">
<p align=center><font size=80pz><strong>謝謝惠顧!！</strong></font></p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td>
<form method="post" action="cake.jsp">
<p align=center><input type="submit" name="Checkout" value="確認" ></p>
</td>
<tr colspan="2">
<p>
  <%

      
//Step 5: 顯示結果 
          //直接顯示最新的資料
           //response.sendRedirect("../2.jsp");
		   session.removeAttribute("total");
		   session.removeAttribute("buy_product");
//Step 6: 關閉連線
           con.close();
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>
</p>
<p>&nbsp;</p>
</NOBR>
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
