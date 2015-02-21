<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String username=request.getParameter("username");
String nama=request.getParameter("nama");
String alamat=request.getParameter("alamat");
String email=request.getParameter("email");
String password=request.getParameter("password");
String tgl=request.getParameter("tgl");
int tgll=Integer.parseInt(tgl);
String jk=request.getParameter("jk");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbagus", "root", "");
Statement stmt=myConn.createStatement();
String kueri="insert into tbuser SET username='"+username+"', nama='"+nama+"', alamat='"+alamat+"', email='"+email+"', password='"+password+"', tgl_lahir='"+tgll+"', jk='"+jk+"'";
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("index.jsp?daftar=berhasil");
%>
</html>
