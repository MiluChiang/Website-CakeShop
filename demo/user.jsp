<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") != null ){
    sql = "SELECT * FROM member WHERE id='" +session.getAttribute("id")+"';"; 
	ResultSet paperrs1 =con.createStatement().executeQuery(sql);
	String id="", pwd="";
	//讀出id, pwd當成使用者要更改時的內定值
	while(paperrs1.next()){
	    //name=paperrs1.getString(1);
	    id=paperrs1.getString("id");
		pwd=paperrs1.getString("pwd");
	}

%>
<form action="update.jsp" method="POST" align="center">

<img src="graph/link/hello my dear.jpg" width="20%"><font face="微軟正黑體" size="5px">&nbsp<%=id%>&nbsp<a href='logout.jsp'><img src="graph/link/signout.jpg" width="15%"></a><br>
<a href="message.jsp" target="content"><img src="graph/link/leave a message.jpg" width="30%"></a><br>


<font face="微軟正黑體" size="5px">請修改會員資料：<br /></font>

<table border="0" width="373" height="200" style="border:2px #ccc solid;border-radius:10px;width:500px;height:80px;background-color:#eee;" align="center">
			<tr align="center">
				<td height="40" width="141"><font face="微軟正黑體">帳號 ID：</font></td>
				<td height="40" width="220"><input type="text" name="id" value="<%=id%>" /></td>
			</tr>
			<tr align="center">
				<td height="41" width="141" ><font face="微軟正黑體">密碼 Password：</font></td>
				<td height="41" width="220"><input type="password" name="pwd" value="<%=pwd%>" /></td>
				<td align="left"><input type="submit" name="b1" value="更新資料" /></td>
			</tr>

</table>

</form>
<form >
</form>
<%
}
else{
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="check.jsp" method="POST">
帳號：<input type="text" name="id" /><br />
密碼：<input type="password" name="pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>
