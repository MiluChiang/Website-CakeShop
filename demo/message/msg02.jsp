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
<!--換行副程式-->
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
request.setCharacterEncoding("Big5"); //顯示中文
           if( session.getAttribute("user") == null )
		   {
		   out.print("<script language='javascript'>alert('您尚未登入會員!!無法使用留言版功能!!');window.location.href='msg01.jsp'</script>");
		   }
		   else{
		   //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
           String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"GBK");
           String title=new String(request.getParameter("title").getBytes("ISO-8859-1"),"GBK");   
		   String content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"GBK"); 
           content=newline(content);
		   java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());

			if(name.equals("") ||title.equals("") || content.equals("")){
				out.print("<script language='javascript'>alert('各欄位不可空白喔!');window.location.href='msg01.jsp'</script>");}
			else{
           sql="INSERT INTO board (b_name, b_title, b_content, b_time)VALUES('"+name+"','"+title+"','"+content+"','"+new_date+"');";
		   //out.println(sql);
           con.createStatement().execute(sql);

          //直接顯示最新的資料
           response.sendRedirect("msg01.jsp?page=1");
		   }}

%>
</body>
</html>
