<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import = "java.sql.*, java.util.*"%>
<html>
<head>
	<title></title>
</head>
<body>
<%  	

//Step 1: 載入資料庫驅動程式 
        	Class.forName("com.mysql.jdbc.Driver");	  

//Step 2: 建立連線 
        	String url="jdbc:mysql://localhost/";
            Connection con=DriverManager.getConnection(url,"root","1234");  
//Step 3: 選擇資料庫	
                    con.createStatement().execute("use db");		
//Step 4: 執行 SQL 指令 
                    String sql = "SELECT * FROM product" ;
                    ResultSet rs =  con.createStatement().executeQuery(sql);		
//Step 5: 顯示結果 				        
%>
	<a href='admin_product_deal.jsp?op=add_product'>增加產品&nbsp&nbsp</a>
	<table border="1">
		<tr>
			<td>訂單編號</td>
			<td>產品名稱</td>
			<td>價錢</td>
			<td>庫存</td>
			<td>增加庫存</td>
			<td>減少庫存</td>
			<td>刪除產品</td>
			

		</tr>
<%
	
	sql="select * from product";
	 rs=con.createStatement().executeQuery(sql);
	while(rs.next())
	{
	
	
	%>
			<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td> 
			<td><a href='admin_product_deal.jsp?op=add&bm=<%=rs.getString(1)%>'>加</a></td>
			<td><a href='admin_product_deal.jsp?op=div&bm=<%=rs.getString(1)%>'>減</a></td>
			<td><a href='admin_product_deal.jsp?op=del&bm=<%=rs.getString(1)%>'>刪除</a></td>

			
			
		</tr>

	<%

	}
		
%>
	<a href="admin.jsp">回到後台介面</a>
</table>
</body>
</html>