<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index-admin.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbagus", "root", "");
Statement st = con.createStatement();
%>
<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                        <th><center>KODE TRANSAKSI</center></th>
                                        <th><center>NAMA KURIR</center></th>
                                        <th><center>NAMA LOKASI</center></th>
                                        <th><center>TOTAL HARGA</center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * FROM tbpengiriman,tbtransaksi,tbkurir,tblokasi WHERE tbpengiriman.kd_transaksi=tbtransaksi.kd_transaksi and tbpengiriman.kd_kurir=tbkurir.kd_kurir and tbpengiriman.kd_lokasi=tblokasi.kd_lokasi");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("kd_kurir") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nama_kurir") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("paket") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("harga") + "</center></td>");
                                        }
                                        rs.close();
                                        %>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
			</div>
                    </div>
		</div>
        </div>