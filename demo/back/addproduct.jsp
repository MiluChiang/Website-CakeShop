<%@ page import = "java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import = "java.sql.*, java.util.*"%>


<html>
<head>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/";
Connection con=DriverManager.getConnection(url,"root","1234");
                    con.createStatement().execute("use db");		
                    String sql = "SELECT * FROM product" ;
                    ResultSet rs =  con.createStatement().executeQuery(sql);	
%>
<%

           String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
           String price=request.getParameter("price");
		   String number=request.getParameter("number");
			sql="insert product (productname, price, quantity) ";
           sql+="value ('" + name + "', ";
           sql+="'"+price+"', ";
           sql+="'"+number+"') ";     
           out.println(sql);
		   con.createStatement().execute("use db");
			out.print("<script> alert('新增成功！！自動跳回產品管理頁');location.href='admin_product.jsp'; </script>");
		
%>

         
</body>
</html>