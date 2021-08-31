<%    
    if(session.getAttribute("user") != null){            
		
		//²M°£ user Session
		session.removeAttribute("user");
        response.sendRedirect("index.jsp") ;
	}else{
        out.println("µn¥X¿ù»~ !!") ;
		response.sendRedirect("index.jsp") ;
	}
%>

