<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>车辆系统主页面</title>
<link href="${APP_PATH }/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${APP_PATH }/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop" ><span></span>选项</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="${APP_PATH }/images/leftico01.png" /></span>表A.现场参与方
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="index.html" target="rightFrame">时间地点人员</a><i></i></li>
        <li><cite></cite><a href="right.html" target="rightFrame">事故地点环境条件</a><i></i></li>
        <li><cite></cite><a href="imgtable.html" target="rightFrame">现场保护措施</a><i></i></li>
        <%-- <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li> --%>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="${APP_PATH }/images/leftico02.png" /></span>表B1.车辆信息-乘用车
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="#">车辆基本信息</a><i></i></li>
        <li><cite></cite><a href="#">车辆保险信息</a><i></i></li>
        <li><cite></cite><a href="#">车辆燃烧基本信息</a><i></i></li>
        <li><cite></cite><a href="#">汽车外部烧损信息</a><i></i></li>
        <li><cite></cite><a href="#">汽车内部烧损信息</a><i></i></li>
        <li><cite></cite><a href="#">汽车周围烧损信息</a><i></i></li>
        <li><cite></cite><a href="#">起火部位信息</a><i></i></li>
        </ul>     
    </dd> 
    
    
    <dd><div class="title"><span><img src="${APP_PATH }/images/leftico03.png" /></span>表C.人员调查信息</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">基本信息</a><i></i></li>
        <li><cite></cite><a href="#">火灾状态信息</a><i></i></li>
        <%-- <li><cite></cite><a href="#">信息列表</a><i></i></li>
        <li><cite></cite><a href="#">其他</a><i></i></li> --%>
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="${APP_PATH }/images/leftico04.png" /></span>日期管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">自定义</a><i></i></li>
        <li><cite></cite><a href="#">常用资料</a><i></i></li>
        <li><cite></cite><a href="#">信息列表</a><i></i></li>
        <li><cite></cite><a href="#">其他</a><i></i></li>
    </ul>
    
    </dd>   
    
    </dl>
    
</body>
</html>
