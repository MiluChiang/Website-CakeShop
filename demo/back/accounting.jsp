<%@ page import = "java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import = "java.sql.*, java.util.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use test";
con.createStatement().execute(sql);
%>

<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Wewood 原木手錶</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
	
	<meta name="keywwords" content="Shop Around - Great free html template for on-line shop. Use it as a start point for your on line business. The template can be easily implemented in many open source E-commerce platforms" />
	<meta name="description" content="Shop Around - Great free html template for on-line shop. Use it as a start point for your on line business. The template can be easily implemented in many open source E-commerce platforms" />
	
	<!-- JS -->
	<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>	
	<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>	
	<script src="js/jquery-func.js" type="text/javascript"></script>	
	<!-- End JS -->
	
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- Shell -->	
<div class="shell">
	
	<!-- Header -->	
	<div id="header">
		<h1 id="logo"><a href="index.jsp">原木手錶販售</a></h1>	
		
		<!-- Cart -->
		<div id="cart">
			<a href="buy.jsp" class="cart-link">前往購物</a>
			<div class="cl">&nbsp;</div>
			<span>祝您購物愉快！</span>
		</div>
		<!-- End Cart -->
		
		<!-- Navigation -->
		<div id="navigation">
			<ul>
			    <li><a href="index.jsp">首頁</a></li>
			    <li><a href="product.jsp">產品介紹</a></li>
			    <li><a href="accounting.jsp" class="active">我的帳戶</a></li>
			    <li><a href="board.jsp">留言板</a></li>
			    <li><a href="contact.jsp">連絡資訊</a></li>
			</ul>
		</div>
		<!-- End Navigation -->
	</div>
		<div align=center> <br></br><font face=Arial Unicode MS size=6> 
				
<% 
	

	if(session.getAttribute("id")!=null)
	{
		out.print("<br/>");
		out.print("您已登入"+"<br>");
		out.print("</font></div>");
		out.print("<div align=center>");
		
		out.print("<br><input type=button onclick=javascript:location.href='logout.jsp' value=登出>");
		out.print("<input type=button onclick=javascript:location.href='search.jsp' value=查看訂單>");
		
		out.print("<form name=user method=post action=chgaccount.jsp>");
		out.print("<br><input name=pwd type=text value=''><input type=button onclick=user.submit() value=換個密碼>");
		out.print("</form>");
	}
	else
	{	
		
		out.print("<font color=#008000>會員登入</font> ");
		out.print("</font><br></br>");
			out.print("<form name=user method=post action=123.jsp>");
			out.print("<div align=center>帳號:");
              out.print("<INPUT TYPE=TEXT NAME=id SIZE=40></div>");
			out.print("<br></br>");
			out.print("<div align=center>密碼:");
              out.print("<INPUT type=password NAME=password SIZE=40></div>");
			out.print("<br></br>");
		
	}
%>		
			
		
		 <%


  
if(request.getParameter("id") !=null && request.getParameter("password") != null){
      
    
   sql = "SELECT * FROM member WHERE id='" +request.getParameter("id") + "'  AND password='" + request.getParameter("password") + "'"  ; 
    ResultSet paperrs =con.createStatement().executeQuery(sql);
    
    if(paperrs.next()){            
        session.setAttribute("id",request.getParameter("id"));
		 out.println("登入成功 !!") ;
		 response.sendRedirect("loging.jsp") ;
    }
    else
        out.println("密碼帳號不符 !!") ;
}

%>
	<%	
		if(session.getAttribute("id")==null)
		{
			out.print("</div><br></br>");
			out.print("<div align=center>");
			out.print("<input type=SUBMIT name=submit value=傳送 style=width:80px>");
			out.print("<input type=RESET  name=reset  value=還沒有會員嗎？請按此申請 style=width:160px onclick=javascript:location.href='application.jsp'>");
			out.print("</p>");
			out.print("</form>");
		}
		
	%>
		<ul class="contact">
<!-- Text Cols -->
		<div class="cols">
			<div class="cl">&nbsp;</div>
			<div class="col">
				<h3 class="ico ico1">海外空運</h3>
				<p>提供最優質迅速的海外空運服務！需要請連絡我們:0912345678 中原隨便運</p>
				<p class="more"><a href="https://www.facebook.com/NEED.NEED.NEED.NEED.NEED?fref=ts" target=_blank class="bul">連絡人Facebook</a></p>
			</div>
			<div class="col">
				<h3 class="ico ico2">客服諮詢</h3>
				<p>如果吃飽太閒，想找人聊聊天，歡迎撥打客服專線 0800-000-000</p>
				<p class="more"><a href="contact.jsp" class="bul">前往連絡資訊</a></p>
			</div>
			<div class="col">
				<h3 class="ico ico3">代客送禮</h3>
				<p>如果你想送給小編卻害羞不敢親自送，我們有代客送禮的服務唷~詳情請洽小編</p>
				<p class="more"><A href=javascript:alert("小編電話:0987654321")>小編電話</A></p>
				
			</div>
			&nbsp;
			<div class="col col-last">
			  <h3 class="ico ico4">前往購物</h3>
				<p>如果喜歡商品，歡迎大量團購！</p>
				<p class="more"><a href="buy.jsp" class="bul">我要購物</a></p>
			</div>
			<div class="cl">&nbsp;</div>
		</div>
		<!-- End Text Cols -->
		</ul>
	</div>
<p class="left">
			<a href="index.jsp">首頁</a>
			<span>|</span>
			<a href="product.jsp">產品介紹</a>
			<span>|</span>
			<a href="accounting.jsp">我的帳戶</a>
			<span>|</span>
			<a href="board.jsp">留言板</a>
			<span>|</span>
			<a href="contact.jsp">連絡資訊</a>
		</p>
		<p class="right">
			&copy; 2015 Need Taiwan
		</p>
	</div>
	<!-- End Footer -->
	
</div>	
<!-- End Shell -->
	
	
</body>
</html>