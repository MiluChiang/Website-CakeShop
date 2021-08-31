<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
String sql="use db";
con.createStatement().execute(sql);
%>
<%
    PreparedStatement pstat = null;  
    ResultSet rs = null;  
      
     sql = null;  
    String op = request.getParameter("op");  


    if (op.equals("add_product")){  
        %>
			<form action="addproduct.jsp" >
				產品名稱<input type="text" name=name><br/>
				產品價錢<input type="text" name=price><br/>
				庫存<input type="text" name=number><br/>
				<input type="submit" value="提交">
			</form>
		<%
   
		
    }  	
	  
    //?商品放入?物?  
    if (op.equals("add")){  
        
        String bm = request.getParameter("bm");  
        String name=null,price=null;  
		String num=null;
        sql = "select * from product where productid=?";  
        pstat = con.prepareStatement(sql);  
        pstat.setString(1,bm);  
        rs = pstat.executeQuery();  
        if (rs.next()){  
            name = rs.getString("productname").trim();  
            price = rs.getString("price").trim();  
			num=rs.getString("quantity").trim();
        }  
        rs.close();  
        pstat.close();  
        int a = Integer.parseInt(num)+1;
        //?所??商品加入到?物?中  
        sql = "UPDATE product set quantity='"+ a + "' WHERE productid='"+bm+"'";  
		
		con.createStatement().execute(sql);
 	
		out.print("<script> alert('修改成功！！自動跳回產品管理頁');location.href='admin_product.jsp'; </script>");
          
    }  
	
	    if (op.equals("div")){  
        
        String bm = request.getParameter("bm");  
        String name=null,price=null;  
		String num=null;
        sql = "select * from product where productid=?";  
        pstat = con.prepareStatement(sql);  
        pstat.setString(1,bm);  
        rs = pstat.executeQuery();  
        if (rs.next()){  
            name = rs.getString("productname").trim();  
            price = rs.getString("price").trim();  
			num=rs.getString("quantity").trim();
        }  
        rs.close();  
        pstat.close();  
        int a = Integer.parseInt(num)-1;
        //?所??商品加入到?物?中  
        sql = "UPDATE product set quantity='"+ a + "' WHERE productid='"+bm+"'";  

		
		con.createStatement().execute(sql);
		
		out.print("<script> alert('修改成功！！自動跳回產品管理頁');location.href='admin_product.jsp'; </script>");
 
          
    }  
      
      
    //?商品退回到商品架(?商品??物?中?除)  
    if (op.equals("del")){  
         String bm = request.getParameter("bm");  
        sql = "delete from product where productid=?";  
        pstat = con.prepareStatement(sql);  
        pstat.setString(1,bm);  
        pstat.executeUpdate();  
        pstat.close();    
           
        con.close();  
          
 
        out.print("<script> alert('修改成功！！自動跳回產品管理頁');location.href='admin_product.jsp'; </script>");
    }  
      

%>
</body>
</html>