<%
    String li=request.getParameter("link");
     if(li.equals("home")){
        %>
        <%@include file="index_user.jsp" %> 
        <%
        }     
     else if(li.equals("login")){
            %>
            <%@include file="user_login.jsp" %> 
            <%
           }
      else{
           out.println("");
           }

           %>
