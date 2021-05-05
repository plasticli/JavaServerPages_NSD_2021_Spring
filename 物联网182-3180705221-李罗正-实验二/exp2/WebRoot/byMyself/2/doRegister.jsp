<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!--  -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
    <jsp:useBean id="member" class="cn.edu.ahpu.llz.Member" scope="page">
      <jsp:setProperty property="*" name="member"/>
    </jsp:useBean>
    
   	用户名：<jsp:getProperty property="username" name="member"/><br>
	口令：<jsp:getProperty property="password" name="member"/><br>
	性别：<jsp:getProperty property="sex" name="member"/><br>
	爱好：
	<%
		String []hobbies=request.getParameterValues("hobby");
		for(String hobby:hobbies)
			out.println(hobby+"  ");
	 %>
	 
    <br>
  </body>
</html>
