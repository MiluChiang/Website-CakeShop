<!-- Step 0: import library -->
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<meta http-equiv="refresh" content="3 ; url=http://localhost:8080/0626/index.jsp">
<head>
<title>create table</title>
</head>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式 
     Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	   
         String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫           
            String sql="use cakeshop";
           con.createStatement().execute(sql);
			//從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
			String new_id=request.getParameter("m_account");
			String new_pwd=request.getParameter("m_password");
			String new_name=new String(request.getParameter("m_name").getBytes("ISO-8859-1"),"UTF-8");
			String new_bth=request.getParameter("m_bth");
			String new_phone=request.getParameter("m_phone");
			String new_addre=new String(request.getParameter("m_address").getBytes("ISO-8859-1"),"UTF-8");
//Step 4: 執行 SQL 指令	        
			sql="insert member (m_account, m_password, m_name, m_bth, m_phone, m_address) ";
           sql+="value ('" + new_m_account + "', ";
           sql+="'"+new_m_password+"', ";
           sql+="'"+new_m_name+"', "; 
		   sql+="'"+new_m_bth+"', ";
           sql+="'"+new_m_phone+"', ";
           sql+="'"+new_m_address+"') ";		         
//out.println(sql);
           con.createStatement().execute(sql);
//Step 5: 顯示結果           
            out.println("註冊成功!!");
        }
//Step 6: 關閉連線        
        con.close();
     }
     catch (SQLException sExec) {
            out.println("SQL錯誤");
     }
}
catch (ClassNotFoundException err) {
       out.println("class錯誤");
}
%>
</body>
</html>
	