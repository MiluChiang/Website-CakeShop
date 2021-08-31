<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
        Connection con=DriverManager.getConnection(url,"root","1234");   
		String sql="use cakeshop";
           con.createStatement().execute(sql);



if(request.getParameter("id") !=null && request.getParameter("pwd") != null){
     sql = "SELECT * FROM register WHERE id='" +request.getParameter("id") + "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    ResultSet paperrs =con.createStatement().executeQuery(sql);
    if(paperrs.next()){            

        session.setAttribute("id",request.getParameter("id"));
        response.sendRedirect("login.jsp") ;

    }
    else
        out.println("密碼帳號不符 !! <a href='login.jsp'>按此</a>重新登入") ;
}


%>

