<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>
<%@include file="koneksi.jsp" %>
<%
String username = (String)session.getAttribute("sessionusername");
rs = st.executeQuery("SELECT * from tbuser where username='"+username+"'");
while (rs.next()) {

String level=rs.getString("lev");
if(level.equals("admin")){

response.sendRedirect("dashboard.jsp?link=adm");
}else
if(level.equals("user")){

response.sendRedirect("index.jsp");
}else
if(level.equals("mgr")){

response.sendRedirect("dashboard.jsp?link=mgr");
}
{
%>
<%
}
}
%>