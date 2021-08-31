<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<%@include file="../dbcon.jsp" %>
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
MESSAGE
</title>
<body bgcolor="#000000">
<%
String b_name=request.getParameter("name");
String b_title=request.getParameter("title");
String b_content=request.getParameter("content");
%>
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
			out.print("[<a href='../logout.jsp'>登出</a>]");
			
	}else{
	
%>

<form name="form1" method="post" action="../login.jsp">
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
		<a href="../join02.jsp"><font size="3" face="華康采風體W3" color=#FFFFFF>會員註冊</font></b>
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
	<a href="../index.jsp"><img src="image/logo.png" width="125" height="125" align=center></a>&nbsp&nbsp&nbsp
    <a href="../index.jsp"><img src="image/news.jpg" border="0" onmouseover="this.src='image/news.gif';" onmouseout="this.src='image/news.jpg';" width="220" height="100" align=middle></a>
    <a href="../cake.jsp"><img src="image/cake.jpg" border="0" onmouseover="this.src='image/cake.gif';" onmouseout="this.src='image/cake.jpg';" width="220" height="100" align=middle></a>
    <a href="../message/msg01.jsp"><img src="image/contact.jpg" border="0" onmouseover="this.src='image/contact.gif';" onmouseout="this.src='image/contact.jpg';"width="220" height="100" align=middle></a>
    <a href="../about.jsp"><img src="image/about.jpg" border="0" onmouseover="this.src='image/about.gif';" onmouseout="this.src='image/about.jpg';"width="220" height="100" align=middle></a>

   </TD>
      </TR>


 
    <td colspan="2" valign="top" width="800">
	<table style="border:3px #FFD382 dashed;" cellpadding="10" border='1' width="800" height="500" align=center ">
    <tr>
    <td width="500" height="400" align=center>
    <div align="center">	  
	<img src="image/e.png" width="60" height="60" ><font face="華康采風體W3" align="center" size="6" color="#FF7573"><b>留言板</b></font>


<%
           sql="SELECT * FROM board"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);

           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total=rs.getRow();
           //out.println("<font face='華康采風體W3' size='4'><b>共"+total+"筆留言<p></b></font>");

           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total/5.0); //無條件進位
		   if (page_num==0) //無留言時將頁數指標訂為1
		       page_num=1;

           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //使用get傳輸方式,建立1,2,...頁超連結
              {
			   out.print("<a href='msg01.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白
           }
           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "1";  //無留言時將頁數指標訂為1        
           Integer current_page=Integer.valueOf(page_string);//將page_string轉成整數
           //Integer current_page=Integer.valueOf(request.getParameter("page"));
	       //計算開始記錄位置   
			
		   //第一頁,上一頁,下一頁,最後一頁
			out.println("<p><font face='華康采風體W3' size='2' color=#FFFFFF><b>目前在第"+current_page+"頁，共"+page_num+"頁</p></b></font>");
			if(current_page!=1){
			   out.print("<a href='msg01.jsp?page="+1+"'>"+"<font face='華康采風體W3' size='4' color=#FFC991><b>第一頁</b></font>"+"</a>");
			}
			if(current_page>1){
			   out.print("<a href='msg01.jsp?page="+(current_page-1)+"'>"+"<form action='msg01.jsp' method='get'><font face='華康采風體W3' size='4' color=#00FA80>上一頁&nbsp&nbsp</b></font>"+"</a>");
			}
			if(current_page<page_num){
			   out.println("<a href='msg01.jsp?page="+(current_page+1)+"'>"+"<form action='msg01.jsp' method='get'><font face='華康采風體W3' size='4' color=#00FA80>下一頁&nbsp&nbsp</b></font>"+"</a>");
			   out.println("<a href='msg01.jsp?page="+page_num+"'>"+"<form action='msg01.jsp' method='get'><font face='華康采風體W3' size='4' color=#00FA80	>最後一頁&nbsp&nbsp</b></font>"+"</a>");
			}
		   
		   //可跳讀頁數
			out.println("<form action='msg01.jsp' method='get'><font face='華康采風體W3' size='4' color=#00FA80	><b>跳至<input type='text' size='1' name='page' value='1'>頁&nbsp&nbsp<input type='submit' style='background-color:#FF8888;color:#000;border:2px #000 solid;width:60px;height:30px;' value='送出'></form><hr />");
			
           int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT * FROM board ORDER BY b_id DESC LIMIT ";//LIMIT是限制傳回筆數
           sql+=start_record+",5";
		   
           rs=con.createStatement().executeQuery(sql);
		   
		   //逐筆顯示, 直到沒有資料(最多還是5筆)
           while(rs.next())
                {
				 request.setCharacterEncoding("Big5"); //顯示中文
				 out.println("<font face='華康采風體W3' size='4' color=#FFFFFF><b>留言主題："+rs.getString("b_title")+"</b></font><br />");
				 out.println("<font face='華康采風體W3' size='4' color=#FFFFFF><b>訪客姓名："+rs.getString("b_name")+"</b></font><br />");
				 out.println("<font face='華康采風體W3' size='4' color=#FFFFFF><b>留言內容："+rs.getString("b_content")+"</b></font><br />");
				 out.println("<font face='華康采風體W3' size='4' color=#FFFFFF><b>留言時間："+rs.getString("b_time")+"</b></font><br /><hr />");
			}
%>
	<font face="華康采風體W3" size="3" color="#FF9291"><b>新增留言</b></font>
	<hr color="#000000" style="border:3px #FFD382 dashed; /><br />
	//<hr color="#008000" />
	<form name="msg" method="post" action="msg02.jsp">
<%
	if( session.getAttribute("user") != null ){
%>
	<img src="image/eag.png" width="40" height="40" ><font face='華康采風體W3' size='4'><b>姓名：</font></b><input type="text" name="name" value="<%=session.getAttribute("user")%>" /><br />
<%}else{%>
	<p><img src="image/eag.png" width="40" height="40" ><font face='華康采風體W3' size='4'><b>姓名：</font></b><input type="text" name="name" /></p>
<%}%>
	<p><img src="image/eag.png" width="40" height="40" ><font face='華康采風體W3' size='4'><font face='華康采風體W3' size='4'><b>主旨：</font></b><input type="text" name="title" /></p>
	<p><img src="image/eag.png" width="40" height="40" ><font face='華康采風體W3' size='4'><font face='華康采風體W3' size='4'><b>內容：</font></b><textarea rows=5 name="content"></textarea></p>
	<input type="reset" style='background-color:#FF8888;color:#000;border:2px #000 solid;width:60px;height:30px;' value="Reset" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type="submit" style='background-color:#FF8888;color:#000;border:2px #000 solid;width:60px;height:30px;' value="OK" />
	</form>

    </div>
	</td>
</td>
</tr>
</table>
<%-- 右邊區塊 END --%>
   </td>
  </tr>

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
