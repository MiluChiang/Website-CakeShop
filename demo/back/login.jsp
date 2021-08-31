<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import = "java.io.*,java.sql.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use final";
con.createStatement().execute(sql);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Admin Login</title>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
</head>
<body id="login">
<div id="login-wrapper" class="png_bg">
  <div id="login-top">
    <h1> Admin</h1>
    <!-- Logo (221px width) -->
    <img id="logo" src="resources/images/title.png" alt="Admin logo" /></a> </div>
  <!-- End #logn-top -->
     <% 
		out.print("</font><br></br>");
			out.print("<form name=user method=post action=../123.jsp>");
			out.print("<div align=center>account:");
              out.print("<INPUT TYPE=TEXT NAME=id SIZE=40></div>");
			out.print("<br></br>");
			out.print("<div align=center>password:");
              out.print("<INPUT type=password NAME=password SIZE=40></div>");
			out.print("<br></br>");
%>		
			
		
		 <%

  
if(request.getParameter("id") !=null && request.getParameter("password") != null){
      
    
   sql = "SELECT * FROM back WHERE id='" +request.getParameter("id") + "'  AND password='" + request.getParameter("password") + "'"  ; 
    ResultSet paperrs =con.createStatement().executeQuery(sql);
    
    if(paperrs.next()){            
        session.setAttribute("id",request.getParameter("id"));
		 out.println("succeed!!") ;
		 response.sendRedirect("admin.jsp") ;
    }
    else
        out.println("<div align=center>error !!") ;
}
%>

	<%	
		if(session.getAttribute("id")==null)
		{
			out.print("</div><br></br>");
			out.print("<div align=center>");
			out.print("</p>");
			
		}
		
	%>
	<div align="center">
	 <input type="SUBMIT" name="submit" value="login" style="width:80px" a href="admin.jsp">
    <input type="RESET"  name="reset"  value="clean" style="width:80px">
		
	</form>
	</div>
	
  <!-- End #login-content -->
</div>
<!-- End #login-wrapper -->
</body>
</html>
