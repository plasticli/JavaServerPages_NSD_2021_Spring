<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<% request.setCharacterEncoding("utf8"); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  <!--  -->
  <body>
	<jsp:useBean id="user" class="cn.edu.ahpu.llz.User" scope="session"/>
	<jsp:setProperty property="*" name="user" />
	<%
		if("admin".equals(user.getUsername()) && "123".equals(user.getPassword())){
 	 %>	
 			<jsp:forward page="ok.jsp"></jsp:forward>
 	<%
 		}
 		else{ 
 	 %>
   			<jsp:forward page="error.jsp"></jsp:forward>
	<%
		}
	 %>	
  </body>
</html>
