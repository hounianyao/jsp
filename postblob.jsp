<%@page language="java"import="java.util.*,java.sql.*"pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPEHTMLPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'readblob.jsp' starting page</title>
<meta http-equiv="pragma"content="no-cache">
<meta http-equiv="cache-control"content="no-cache">
<meta http-equiv="expires"content="0">
<meta http-equiv="keywords"content="keyword1,keyword2,keyword3">
<meta http-equiv="description"content="This is my page">
<!--
<link rel="style sheet" type="text/css" href="styles.css">
-->
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String roleID=request.getParameter("roleID");
String className="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/news";
String user="root";
String passwd="123"; 
Class.forName(className);
Connection conn=DriverManager.getConnection(url, user, passwd);
String sql="INSERT INTO users(username,passwd,roleID) VALUES('"+username+"','"+passwd+"',"+roleID+")";
Statement stmt=conn.createStatement();
int count = stmt.executeUpdate(sql); 
if(count>0)
    {
    response.sendRedirect("testblob.jsp");
    }                   
    conn.close();   //关闭数据库连接   
%>
</body>
</html>