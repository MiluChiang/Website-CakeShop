<%@ page import = "java.sql.*, java.util.*" %>
<%@ page contentType="text/html; charset=Big5"
          import="java.util.*" %>

<%@include file="../dbcon.jsp" %>
<html>
<head>
<title>=MESSAGE=</title>
</head>
<body>
<% request.setCharacterEncoding("big5"); %>
<!--����Ƶ{��-->
<%!
     String newline(String str)         
     {
      int index=0;
      while((index=str.indexOf("\n"))!=-1)
       str=str.substring(0,index)+"<br>"+str.substring(index+1);
      return(str);
     }
%>
<%
request.setCharacterEncoding("Big5"); //��ܤ���
           if( session.getAttribute("user") == null )
		   {
		   out.print("<script language='javascript'>alert('�z�|���n�J�|��!!�L�k�ϥίd�����\��!!');window.location.href='msg01.jsp'</script>");
		   }
		   else{
		   //�q���ǻ�������Ʈw, �����ϥ�getBytes("ISO-8859-1")�s�X
           String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"GBK");
           String title=new String(request.getParameter("title").getBytes("ISO-8859-1"),"GBK");   
		   String content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"GBK"); 
           content=newline(content);
		   java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());

			if(name.equals("") ||title.equals("") || content.equals("")){
				out.print("<script language='javascript'>alert('�U��줣�i�ťճ�!');window.location.href='msg01.jsp'</script>");}
			else{
           sql="INSERT INTO board (b_name, b_title, b_content, b_time)VALUES('"+name+"','"+title+"','"+content+"','"+new_date+"');";
		   //out.println(sql);
           con.createStatement().execute(sql);

          //������̷ܳs�����
           response.sendRedirect("msg01.jsp?page=1");
		   }}

%>
</body>
</html>
