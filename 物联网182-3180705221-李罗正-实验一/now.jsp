<!--JSP 页面的首行，pageEncoding 属性指定了页面的编码-->
<%@page language="java" pageEncoding="UTF-8"%>

<!--导入本页面需要的 Java 类-->
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<html>
<head>
<title>走动的时间（JSP 版）</title>

<style type="text/css">
.nowDiv{
font-size: 32px;
}

#nowSpan{
color: #ff0000;
border-bottom: 2px dotted blue;
}
</style>

<script type="text/javascript">
reload(); // 页面加载完毕后立即调用下面的 reload 函数

function reload() {
/******************************************
1、注意 setTimeout 与 setInterval 函数的区别，
前者的第一个参数对应的函数仅在第二个参数指定的
延时到达后执行 1 次。

2、此处 setTimeout 的第一个参数是一个匿名（即省
略了函数名，因为不会在其他地方调用）函数。
******************************************/
setTimeout(function() {
window.location.reload(); // 重新向服务器请求当前页面（相当于浏览器的 F5 刷新）
}, 1000);
}
</script>
</head>

<body>
<div class="nowDiv">
 现在时间是：<span id="nowSpan">
<%
SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
out.print(sdf.format(new Date())); // 取得系统（服务器所在机器）当前时间
%>
</span>
</div>
</body>
</html>