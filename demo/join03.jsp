<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<%@include file="dbcon.jsp" %>

<meta http-equiv="Content-Language" content="zh-tw">
<meta http-equiv="Content-Type" content="text/html; charset=big5">
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
<H5 align="right"><FONT  Color=#FF0000 ><A HREF="cart.jsp" style="color:FFFFFF;"><STRONG>�ʪ���&nbsp&nbsp</STRONG></a></A>
<table border="0" cellpadding="0" cellspacing="0" width="100%" >
	<!--��T��-->
	<tr>

		<td colspan="3" valign="top">
	
	<!--��ܿ�J�b�����϶�div-->
		<div align="right">
 
<%
	if( session.getAttribute("user") != null ){
			out.print("hi�A" + session.getAttribute("user") + "�ϥΪ�  ");
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

 <%-- �k��϶� START --%>
 <table width="50%" height="50%" align="center" style="border:2px #ccc solid;border-radius:15px;width:800px;height:300px;background-color:#DDD;" >

<tr>
<td bgcolor=#FFB0AF height=50>
<p align=center ><font size="5" face="�L�n������">�|������</font>
<tr>
<td>
���U���\
</td>
<tr>

</td>
</tr>
		                
<%
    request.setCharacterEncoding("Big5");
                                                 
    String name = request.getParameter("name");
    String acc = request.getParameter("acc");
    String pwd = request.getParameter("pwd");
    String email = request.getParameter("mail");
    String tel = request.getParameter("tel");
    String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String add=address1+address2;
    String gender = request.getParameter("gender");
	
	String[] a= request.getParameterValues("year");
	String[] b= request.getParameterValues("month");
    String[] c= request.getParameterValues("date");
	String bir;  
	bir=a[0]+"-"+b[0]+"-"+c[0];
	
  try                                                             
   {
	
	sql="SELECT m_account FROM member ;";
	ResultSet rs =con.createStatement().executeQuery(sql);
	while(rs.next())
	{
		if(rs.getString("m_account").equals(acc))
		{
			out.print("<script language='javascript'>alert('�z��J���b�����H�ιL�o');window.location.href='join02.jsp'</script>");	
		}
		
	}
	if(name.equals("") || acc.equals("") ||pwd.equals("")||email.equals("")||tel.equals("")||add.equals("")||gender.equals("")||bir.equals(""))
		out.print("<script language='javascript'>alert('�U��줣�i�ťճ�!');window.location.href='join02.jsp'</script>");
	sql="INSERT INTO member(m_account,m_password,m_name,m_phone,m_address,m_mail,m_sex,m_birthday)VALUES('"+acc+"','"+pwd+"','"+name+"','"+tel+"','"+add+"','"+email+"','"+gender+"','"+bir+"')";   
     con.createStatement().execute(sql);
            out.println("���U�����o!!");
            out.println("���߱z�w����Sylvia���|��");
			out.println("�i�H�ܥ��W���n�J�|���b�K�F");
       con.close();                                                                   
   }                                                             
   catch (Exception e)                                             
   {                    
      out.println("���U���ѡA�нT�{���!!<br>");
      out.println(e.getMessage());                                  
   } 
     
%>                                                          
	</b> 
	</font>
    </div>
    </td>
 <%-- �k��϶� END --%>
 </td>
  </tr>
</table>
</form>
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