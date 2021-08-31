<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>


<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use db";
con.createStatement().execute(sql);
%>

<%

if(request.getParameter("acc") !=null && request.getParameter("pwd") != null){
      
    //sql = "SELECT * FROM member WHERE id='" +request.getParameter("id") + 
	//      "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    sql = "SELECT * FROM member WHERE m_account=? AND m_password=?";
	//' OR 1=1; #
	//out.println(sql);
	//out.close();//程式結束
    PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("acc"));
    pstmt.setString(2,request.getParameter("pwd"));
	
	ResultSet paperrs = pstmt.executeQuery();
	//ResultSet paperrs =con.createStatement().executeQuery(sql);
    
    
    if(paperrs.next()){            
        session.setAttribute("user",request.getParameter("acc"));
     
if( request.getParameter("acc").equals("admin"))
{
     session.setAttribute("id",request.getParameter("id"));
     out.print("<script> alert('歡迎您回來！！自動跳入後端管理');location.href='back/admin.jsp'; </script>");
}
else
	   response.sendRedirect("index.jsp") ;
    }
    else{
	out.print("<script language='javascript'>alert('帳號密碼不符!!!');window.location.href='index.jsp'</script>");
		//response.sendRedirect("index.jsp") ;
		}
}

%>



