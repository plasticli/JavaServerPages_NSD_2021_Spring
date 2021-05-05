<%@page import="bean.Mytools"%>
<%@page import="java.util.List"%>
<%@page import="bean.Message"%>
<%@page contentType="text/html;chartset=utf-8" pageEncoding="utf-8" %>

<html>
<head></head>
<body>

<%
List<Message> list=(List<Message>)application.getAttribute("messagelist"); //取出留言list
%>

<table border="1">
	<tr>
		<td>#</td>
		<td>留言者</td>
		<td>标题</td>
		<td>内容</td>
		<td>时间</td>
	</tr>

	<%
	for(int i=0;i<list.size();i++){
		Message msg=list.get(i);
	 %>
	 
	 <tr>
		<td><%=i+1 %></td>
		<td><%=msg.getName() %></td>
		<td><%=Mytools.change(msg.getTitle()) %></td>
		<td><%=Mytools.change(msg.getContent()) %></td>
		<td><%=msg.getCreateTime().toLocaleString() %></td>
	</tr>

	<%} %>
	
</table>
</body>
</html>