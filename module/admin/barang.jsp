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
                                        <th><center>KODE BARANG</center></th>
                                        <th><center>NAMA USER</center></th>
                                        <th><center>NAMA TOKO</center></th>
                                        <th><center>NAMA BARANG</center></th>
                                        <th><center>HARGA</center></th>
                                        <th><center>DESKRIPSI</center></th>
                                        <th><center>TANGGAL MASUK</center></th>
                                        <th><center>TANGGAL KELUAR</center></th>
                                        <th><center>JENIS BARANG</center></th>
                                        <th><center>BERAT</center></th>
                                        <th><center>STOK</center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * FROM tbbarang,tbtoko,tbuser WHERE tbbarang.kd_user=tbuser.kd_user and tbbarang.kd_toko=tbtoko.kd_toko");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("kd_barang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nama_user") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nama_toko") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nama_barang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("harga") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("deskripsi") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("tgl_masukbarang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("tgl_keluarbarang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("jenis_barang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("berat") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("stok") + "</center></td>");
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