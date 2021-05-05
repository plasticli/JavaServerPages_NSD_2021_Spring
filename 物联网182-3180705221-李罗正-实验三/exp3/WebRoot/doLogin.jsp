<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String name=request.getParameter("username");
String pass=request.getParameter("password");
if(name.startsWith("ahpu_") && name.length()>=6 && name.length()<=12 && pass.equals("123")){
	session.setAttribute("username", name);//用户名存入session，其它页面取出
	response.sendRedirect("messageBoard.jsp");
}
else
	out.print("用户名或者密码错误！");
%>