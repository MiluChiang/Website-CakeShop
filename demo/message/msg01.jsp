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
			out.print("[<a href='../logout.jsp'>�n�X</a>]");
			
	}else{
	
%>

<form name="form1" method="post" action="../login.jsp">
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
		<a href="../join02.jsp"><font size="3" face="�رd������W3" color=#FFFFFF>�|�����U</font></b>
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
	<img src="image/e.png" width="60" height="60" ><font face="�رd������W3" align="center" size="6" color="#FF7573"><b>�d���O</b></font>


<%
           sql="SELECT * FROM board"; //��X�@�X���d��
           ResultSet rs=con.createStatement().executeQuery(sql);

           //�������ɧ�, getRow()��, �N�i���D�@���X���O��
           rs.last();
           int total=rs.getRow();
           //out.println("<font face='�رd������W3' size='4'><b>�@"+total+"���d��<p></b></font>");

           //�C�����5��, ��X�@�X��
           int page_num=(int)Math.ceil((double)total/5.0); //�L����i��
		   if (page_num==0) //�L�d���ɱN���ƫ��Эq��1
		       page_num=1;

           //�ϥζW�s���覡, �I�s�ۤv, �ϥ�get�覡�ǻ��Ѽ�(�ܼƦW�٬�page)
           for(int i=1;i<=page_num;i++) //�ϥ�get�ǿ�覡,�إ�1,2,...���W�s��
              {
			   out.print("<a href='msg01.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html���ť�
           }
           //Ū��page�ܼ�
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "1";  //�L�d���ɱN���ƫ��Эq��1        
           Integer current_page=Integer.valueOf(page_string);//�Npage_string�ন���
           //Integer current_page=Integer.valueOf(request.getParameter("page"));
	       //�p��}�l�O����m   
			
		   //�Ĥ@��,�W�@��,�U�@��,�̫�@��
			out.println("<p><font face='�رd������W3' size='2' color=#FFFFFF><b>�ثe�b��"+current_page+"���A�@"+page_num+"��</p></b></font>");
			if(current_page!=1){
			   out.print("<a href='msg01.jsp?page="+1+"'>"+"<font face='�رd������W3' size='4' color=#FFC991><b>�Ĥ@��</b></font>"+"</a>");
			}
			if(current_page>1){
			   out.print("<a href='msg01.jsp?page="+(current_page-1)+"'>"+"<form action='msg01.jsp' method='get'><font face='�رd������W3' size='4' color=#00FA80>�W�@��&nbsp&nbsp</b></font>"+"</a>");
			}
			if(current_page<page_num){
			   out.println("<a href='msg01.jsp?page="+(current_page+1)+"'>"+"<form action='msg01.jsp' method='get'><font face='�رd������W3' size='4' color=#00FA80>�U�@��&nbsp&nbsp</b></font>"+"</a>");
			   out.println("<a href='msg01.jsp?page="+page_num+"'>"+"<form action='msg01.jsp' method='get'><font face='�رd������W3' size='4' color=#00FA80	>�̫�@��&nbsp&nbsp</b></font>"+"</a>");
			}
		   
		   //�i��Ū����
			out.println("<form action='msg01.jsp' method='get'><font face='�رd������W3' size='4' color=#00FA80	><b>����<input type='text' size='1' name='page' value='1'>��&nbsp&nbsp<input type='submit' style='background-color:#FF8888;color:#000;border:2px #000 solid;width:60px;height:30px;' value='�e�X'></form><hr />");
			
           int start_record=(current_page-1)*5;
           //����Ƨ�, ���̷s����ƱƦb�̫e��
           sql="SELECT * FROM board ORDER BY b_id DESC LIMIT ";//LIMIT�O����Ǧ^����
           sql+=start_record+",5";
		   
           rs=con.createStatement().executeQuery(sql);
		   
		   //�v�����, ����S�����(�̦h�٬O5��)
           while(rs.next())
                {
				 request.setCharacterEncoding("Big5"); //��ܤ���
				 out.println("<font face='�رd������W3' size='4' color=#FFFFFF><b>�d���D�D�G"+rs.getString("b_title")+"</b></font><br />");
				 out.println("<font face='�رd������W3' size='4' color=#FFFFFF><b>�X�ȩm�W�G"+rs.getString("b_name")+"</b></font><br />");
				 out.println("<font face='�رd������W3' size='4' color=#FFFFFF><b>�d�����e�G"+rs.getString("b_content")+"</b></font><br />");
				 out.println("<font face='�رd������W3' size='4' color=#FFFFFF><b>�d���ɶ��G"+rs.getString("b_time")+"</b></font><br /><hr />");
			}
%>
	<font face="�رd������W3" size="3" color="#FF9291"><b>�s�W�d��</b></font>
	<hr color="#000000" style="border:3px #FFD382 dashed; /><br />
	//<hr color="#008000" />
	<form name="msg" method="post" action="msg02.jsp">
<%
	if( session.getAttribute("user") != null ){
%>
	<img src="image/eag.png" width="40" height="40" ><font face='�رd������W3' size='4'><b>�m�W�G</font></b><input type="text" name="name" value="<%=session.getAttribute("user")%>" /><br />
<%}else{%>
	<p><img src="image/eag.png" width="40" height="40" ><font face='�رd������W3' size='4'><b>�m�W�G</font></b><input type="text" name="name" /></p>
<%}%>
	<p><img src="image/eag.png" width="40" height="40" ><font face='�رd������W3' size='4'><font face='�رd������W3' size='4'><b>�D���G</font></b><input type="text" name="title" /></p>
	<p><img src="image/eag.png" width="40" height="40" ><font face='�رd������W3' size='4'><font face='�رd������W3' size='4'><b>���e�G</font></b><textarea rows=5 name="content"></textarea></p>
	<input type="reset" style='background-color:#FF8888;color:#000;border:2px #000 solid;width:60px;height:30px;' value="Reset" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type="submit" style='background-color:#FF8888;color:#000;border:2px #000 solid;width:60px;height:30px;' value="OK" />
	</form>

    </div>
	</td>
</td>
</tr>
</table>
<%-- �k��϶� END --%>
   </td>
  </tr>

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
