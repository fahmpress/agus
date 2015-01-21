<META HTTP-EQUIV=?Refresh?>
<%
session.removeAttribute("sessionusername");
session.removeAttribute("sessionpassword");
session.invalidate();
response.sendRedirect("admin_login.jsp");
%>


