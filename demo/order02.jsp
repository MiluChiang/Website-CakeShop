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
<H5 align="right"><FONT  Color=#FF0000 ><A HREF="cart.jsp" style="color:FFFFFF;"><STRONG>�ʪ���&nbsp&nbsp</STRONG></a></A>
<table border="0" cellpadding="0" cellspacing="0" width="100%" >
	<!--��T��-->
	<tr>

		<td colspan="3" valign="top">
	
	<!--��ܿ�J�b�����϶�div-->
		<div align="right">
 
<%
	if( session.getAttribute("user") != null ){
			out.print("<font color=#FFFFFF>hi�A" + session.getAttribute("user") + " </font>");
			out.print("[<a href='logout.jsp'>�n�X</a>]");
			
	}else{
	
%>

<form name="form1" method="post" action="login.jsp">
    <table width="600" border="0">
    <tr>
        <td><b><font face="�رd������W3" size=4 color=#FFFFFF>�|���n�J</font></b></td>
		<td><b><font size="3" face="�رd������W3" color=#FFFFFF>�b��</font></b></td>
        <td><label>
          <input name="acc" type="text" size="10">
			</label></td>
        <td><b><font size="3" face="�رd������W3" color=#FFFFFF>�K�X</font></b></td>
        <td><label>
          <input name="pwd" type="password" size="10">
          <input type="submit" name="Submit" value="�e�X">
		<td>
		<a href="join02.jsp"><font size="3" face="�رd������W3" color=#FFFFFF>�|�����U</font></b>
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
<p align=center ><font size="5" face="�L�n������">�K�ߤp����</font>

</td>
</tr>
	
 <%-- �k��϶� START --%>
<!--�P�_�O�_���|��-->
<tr>
<%
	if( session.getAttribute("user") == null ){
			out.print("<td colspan='2' valign='top' width='800'><div align='center'>");
			out.print("<p align='center'><font face='�رd������W3' size='6'><b>");
			out.print("�z�|���n�J�t�ΡA����ϥέq�ʪA�ȡA<br />�Y�z�w�O�|���A<br />�n�q�ʰӫ~�Х��n�J�C<br />");
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

background-image:url(image/b.png); /*�I���Ϧs����|*/

background-attachment:fixed; /*�I���T�w*/

background-repeat:no-repeat; /*�I���Ϥ��n����*/

background-position:bottom right; /*�m���m �U�� ����*/

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