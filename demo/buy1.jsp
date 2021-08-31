<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@include file="config.jsp" %>
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
<td colspan="2" bgcolor=#FFB0AF height=50>
<p   align=center ><font size="5" face="微軟正黑體">訂購單</font>

</td>
</tr>
<%
	if( session.getAttribute("user") == null ){

	response.sendRedirect("order02.jsp") ;
	}
	
%>
<%
sql="select * from product";
ResultSet rs=con.createStatement().executeQuery(sql);
%>
  <%
        if(request.getParameterValues("Product_Id")==null)
		{
		out.print("<script> alert('請勾選商品!');location.href='cake.jsp'; </script>");
		}
		else{
		
		String  check[] = request.getParameterValues("Product_Id");
		 if(check.length==0)
		 {		
		
		%>
  
  <%
		 }
		else{
        int q=0;
        int tota=0;
        int g=check.length;
        int left;
        String idd;
       String leftString;
        //out.println("<b>產品名稱<br>");

        while(rs.next())
        {  
		   if(check[q].equals(rs.getString(1)))
           {
			tota=tota+rs.getInt(3);
			leftString = rs.getString(4);
            left = Integer.parseInt(leftString);
            left = left - 1;
            leftString = String.valueOf(left);
            //out.println("<tr><td>"+rs.getString(2)+"--->"+rs.getString()+"元</br></td></tr>"); 
             
			sql="UPDATE product set q="+left+" WHERE productid="+rs.getString(1);
			
            if(q+1<g)q++;
           }   
		  }       
       
        // out.println("<tr><td><br><font size='5' color='#FF0000'>總價為"+tota+"元</font></br></tr></td>");
         session.setAttribute("total",tota);
         
        // session.setAttribute("total",tota);
		}
		}
     %>  
</p>
<p>&nbsp;</p>
<form name="information" method="Post" action="finalend.jsp" >
<center>
  <tr>
    <th  width="117" scope="row">Your Account：</th>
    <td width="378">　<b><%=session.getAttribute("user")%></b></td>
  </tr>
  <tr>
    <th scope="row">Tel：</th>
    <td>　
    <input type="text" name="buyer_phone" size=20 /></td>
  </tr>
  <tr>
    <th scope="row">Total Price：</th>
    <td>　<b>ＮＴ　<font color=red><%=session.getAttribute("total")%></font>　＄</b></td>
  </tr>
  <tr>
    <th scope="row">Method：</th>
    <td>　
      <select name="pay_way">
      <option>信用卡</option>
      <option> 銀行匯款</option>
      <option>郵局匯款</option>
    </select></td>
  </tr>
  <tr>
    <th scope="row">Name：</th>
    <td>　
      <input type="text" name="receivr_name"  size="20" /></td>
  </tr>
  <tr>
    <th scope="row">Adress：</th>
    <td>　
      <input type="text" name="receivr_addr"  size="36" /></td>
  </tr>
  <tr >
 <td colspan="2">
<p align=center><input type="submit" name="Checkout" value="確認" ></p>
</center>
<p>&nbsp;</p>
</td>
  </tr>
</table>
</table>
<SCRIPT type="text/javascript">
       <!-- 此check()函式在最後的「傳送」案鈕會用到 -->
        function check()
        {
                <!-- 若<form>屬性name值為reg裡的文字方塊值為空字串，則顯示「未輸入姓名」 -->
                if(text.buyer_phone.value == "") 
                {
                        alert("未輸入phone");
                }

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
