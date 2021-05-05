<%@page import="bean.Message"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//获取Messagae对象
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	String name=session.getAttribute("username").toString();
	Date createTime= new Date();
	Message msg=new Message();
	msg.setName(name);
	msg.setTitle(title);
	msg.setContent(content);
	msg.setCreateTime(createTime);
	
	List<Message> list=(List<Message>)application.getAttribute("messagelist");
	//getAttribute默认返回类型是object型，转成list报错
	if(list==null) //说明还没有留言
		list=new ArrayList<Message>();
	
	list.add(msg);
	application.setAttribute("messagelist", list); //将list存入application	
	response.sendRedirect("showMessage.jsp");

%>