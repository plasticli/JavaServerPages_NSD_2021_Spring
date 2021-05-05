<%@ page import="cn.edu.ahpu.llz.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	</head>
  
	<body>
	<%
    	String name=request.getParameter("username");
    	String pass=request.getParameter("password");
   		User user =new User(name,pass);
   
		boolean result="admin".equals(user.getUsername()) && "123".equals(user.getPassword());
		if(result){
			session.setAttribute("username", name);
			session.setAttribute("password", pass);
 	 %>	
 			<jsp:forward page="ok.jsp"></jsp:forward>
	<%
 		}else{
 	 %>
   			<jsp:forward page="error.jsp"></jsp:forward>
	<%
		}
	 %>	
	</body>
</html>
