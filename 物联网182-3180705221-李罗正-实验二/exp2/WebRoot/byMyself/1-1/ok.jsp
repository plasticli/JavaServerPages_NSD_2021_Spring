<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	
<html>
	<head>
	</head>
	
	<body>
		这是ok.jsp<br>
		<jsp:useBean id="user" class="cn.edu.ahpu.llz.User" scope="session"/>
		用户名：<jsp:getProperty  property="username" name="user"/><br/>
	  	口令：<jsp:getProperty property="password" name="user"/><br/>
	</body>
</html>
