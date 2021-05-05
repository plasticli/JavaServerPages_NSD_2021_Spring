<%@page import="cn.edu.ahpu.llz.DBTool"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<% request.setCharacterEncoding("utf8"); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
    <jsp:useBean id="user" class="cn.edu.ahpu.llz.User" scope="session"></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>
    <%
    	boolean result=DBTool.login(user.getUsername(),user.getPassword());
    	//if(result){
    	//	response.sendRedirect("ok.jsp");
    	//}else{
    	//	response.sendRedirect("error.jsp");
    	//}
    	if(result){
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
