<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
    <form action="doRegister.jsp" method="post">
		用户名：<input type="text" name="username"><br>
		口令：<input type="password" name="password"><br>
		性别：<input type="radio" checked="checked" value="男" name="sex">男
		<input type="radio" value="女" name="sex">女<br>
		爱好：<input type="checkbox" value="体育" name="hobby">体育
		<input type="checkbox" value="读书" name="hobby">读书
		<input type="checkbox" value="网络" name="hobby">网络
		<input type="checkbox" value="游戏" name="hobby">游戏
		<br>
		<input type="submit" value="注册">
		<input type="submit" value="重填">
		
	</form>
    <br>
  </body>
</html>
