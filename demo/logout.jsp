<%    
    if(session.getAttribute("user") != null){            
		
		//�M�� user Session
		session.removeAttribute("user");
        response.sendRedirect("index.jsp") ;
	}else{
        out.println("�n�X���~ !!") ;
		response.sendRedirect("index.jsp") ;
	}
%>

