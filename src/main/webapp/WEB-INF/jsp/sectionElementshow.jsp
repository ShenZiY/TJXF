<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
	<title>Document</title>
	
	<meta charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/css/my.css"> 
	<script type="text/javascript" src="${APP_PATH }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${APP_PATH }/js/echarts.min.js"></script>
	
</head>
<body style="width:1341px;font-size: 18px;background-color:#EFF3F6;">

	<h1>主页面，待完成，，，，，</h1>
	
	
</body>
</html>