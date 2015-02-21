<%@page language="java" import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/dbagus",
    usr = "root", pwd = "";
    Connection conn = DriverManager.getConnection(url, usr, pwd);
    Statement st = conn.createStatement();
    Statement st2 = conn.createStatement();

    ResultSet rs = null;
    ResultSet rs2 = null;
    ResultSet rs3 = null;
%>

