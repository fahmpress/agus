<%
    String akses = (String)session.getAttribute("sessionakses");
    String menu = request.getParameter("link");
    
    
        if(menu.equals("umum")){
            %>
            <%@include file="index_user.jsp" %> 
            <%
        }
            else if(menu.equals("pakaian")){
            %>
            <%@include file="module/guest/pakaian.jsp" %> 
            <%
        }
            else if(menu.equals("kecantikan")){
            %>
            <%@include file="module/guest/kecantikan.jsp" %> 
            <%
        }
            else if(menu.equals("rumahtangga")){
            %>
            <%@include file="module/guest/rumahtangga.jsp" %> 
            <%
        }        
            else if(menu.equals("hp")){
            %>
            <%@include file="module/guest/hp.jsp" %> 
            <%
        }
            else if(menu.equals("komputer")){
            %>
            <%@include file="module/guest/komputer.jsp" %> 
            <%
        }
            else if(menu.equals("olahraga")){
            %>
            <%@include file="module/guest/olahraga.jsp" %> 
            <%
        }
            else if(menu.equals("makanan")){
            %>
            <%@include file="module/guest/makanan.jsp" %> 
            <%
        }
            else if(menu.equals("buku")){
            %>
            <%@include file="module/guest/buku.jsp" %> 
            <%
        }
            else if(menu.equals("film")){
            %>
            <%@include file="module/guest/film.jsp" %> 
            <%
        }
            else if(menu.equals("bantuan")){
            %>
            <%@include file="module/guest/bantuan.jsp" %> 
            <%
        }
        
%>
