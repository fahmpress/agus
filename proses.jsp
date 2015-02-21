<%@include file="koneksi.jsp" %>

<%
    String act=request.getParameter("act");
    
    if(act.equals("login")){
        String username=request.getParameter("user");
        String passw=request.getParameter("pass");
        rs = st.executeQuery("SELECT * from tbuser where username='"+username+"' and password='"+passw+"'");
        if (rs.next ())
        {
        session.setAttribute("sessionusername",rs.getString("username"));
        session.setAttribute("sessionpassword",rs.getString("password"));
        session.setAttribute("sessionlevel",rs.getString("lev"));
        response.sendRedirect("loginverifikasi.jsp");
        }else{
        response.sendRedirect("index.jsp?login=gagal");
        }
    }
    if(act.equals("daftar")){
        String username=request.getParameter("username");
        String nama=request.getParameter("nama");
        String alamat=request.getParameter("alamat");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String tgl=request.getParameter("tgl");        
        String jk=request.getParameter("jk");
        rs = st.executeQuery("SELECT * from tbuser where username='"+username+"'");
        rs2 = st2.executeQuery("SELECT * from tbuser where email='"+email+"'");
        if (rs.next ()){
            response.sendRedirect("index.jsp?daftar=gagal");
        }else if (rs2.next()){
            response.sendRedirect("index.jsp?daftar=gagal");
        }
        else{
            String kueri="insert into tbuser SET username='"+username+"', nama='"+nama+"', alamat='"+alamat+"', email='"+email+"', password='"+password+"', tgl_lahir='"+tgl+"', jk='"+jk+"'";
            int edittabel=st.executeUpdate(kueri);
            response.sendRedirect("index.jsp?daftar=berhasil");
        }
    }
%>
