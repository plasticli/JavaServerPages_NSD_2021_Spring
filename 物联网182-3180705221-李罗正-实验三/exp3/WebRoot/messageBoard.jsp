<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head></head>
<body>
<%
    
	if(session.getAttribute("username") == null )//未正确登录过
		response.sendRedirect("login.jsp");
%>
<form action="doMessage.jsp" method="post">
	标题：<input type="text" name="title"><br><br>
	内容	：<textarea name="content" rows="5" cols="20"></textarea><br>
	<input type="submit" value="提交">
</form>

</body>
</html>