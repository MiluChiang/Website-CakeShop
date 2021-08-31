<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<html>
<head>
	<title>查詢訂單</title>
</head>
<body>
<%  	

//Step 1: 載入資料庫驅動程式 
        	Class.forName("com.mysql.jdbc.Driver");	  
 
//Step 2: 建立連線 
        	String url="jdbc:mysql://localhost/";
            Connection con=DriverManager.getConnection(url,"root","1234");  
//Step 3: 選擇資料庫	
                    con.createStatement().execute("use test");		
//Step 4: 執行 SQL 指令 
                    String sql = "SELECT * FROM ordered" ;
                    ResultSet rs =  con.createStatement().executeQuery(sql);		
//Step 5: 顯示結果 				        
%>
	<table border="1">
		<tr>
			<td>訂單編號</td>
			<td>訂貨人帳號</td>
			<td>訂單總金額</td>
			<td>付款方式</td>
			<td>付款方式</td>
			<td>訂貨人姓名</td>
			<td>訂貨人地址</td>
		</tr>
<%
	
	sql="select * from ordered";
	rs=con.createStatement().executeQuery(sql);
	while(rs.next())
	{
	%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
			
			
		</tr>

	<%

	}
		
%>
</table>
</body>
</html>