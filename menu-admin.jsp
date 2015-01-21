<%
    String cek=request.getParameter("menu");
     if(cek.equals("home")){
        %>
        <%@include file="/module/admin/dashboard.jsp" %> 
        <%
        }     
     else if(cek.equals("home")){
            %>
            <%@include file="/module/admin/dashboard.jsp" %> 
            <%
           }
     else if(cek.equals("user")){
            %>
            <%@include file="/module/admin/user.jsp" %> 
            <%
           }
     else if(cek.equals("toko")){
            %>
            <%@include file="/module/admin/toko.jsp" %> 
            <%
           }
     else if(cek.equals("barang")){
            %>
            <%@include file="/module/admin/barang.jsp" %> 
            <%
           }
     else if(cek.equals("kurir")){
            %>
            <%@include file="/module/admin/kurir.jsp" %> 
            <%
           }
     else if(cek.equals("lokasi")){
            %>
            <%@include file="/module/admin/lokasi.jsp" %> 
            <%
           }
     else if(cek.equals("pengiriman")){
            %>
            <%@include file="/module/admin/pengiriman.jsp" %> 
            <%
           }
     else if(cek.equals("transaksi")){
            %>
            <%@include file="/module/admin/transaksi.jsp" %> 
            <%
           }
      else{
           out.println("");
           }

           %>
