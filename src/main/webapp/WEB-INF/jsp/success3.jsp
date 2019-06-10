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
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册成功</title>
<link rel="stylesheet" href="${APP_PATH }/css/style.css">
<script type="text/javascript" src="${APP_PATH }/js/jquery.js"></script>

<script language="javascript">
	$(function(){
    $('.error').css({'position':'absolute','left':($(window).width()-490)/2});
	$(window).resize(function(){  
    $('.error').css({'position':'absolute','left':($(window).width()-490)/2});
    })  
});  
</script> 
</head>


<body style="background:#edf6fa;">

	<div class="place">
    <span></span>
    <ul class="placeul">
    <li><a href="#"></a></li>
    <li><a href="#"></a></li>
    </ul>
    </div>
    
    <div class="error">
    
    <h2 style="color:green">恭喜您！注册成功！</h2>
    <h2><span id="sp" style="color:red ; font-size:15px;font-weight:bold" >5</span>秒后转到登陆界面</h2>
    <script type="text/javascript">  
    				onload=function(){  
        				setInterval(go, 1000);  
    				};  
   					var x=5; //利用了全局变量来执行  
    				function go(){  
    				x--;  
			        if(x>0){  
			        document.getElementById("sp").innerHTML=x;  //每次设置的x的值都不一样了。  
			        }else{  
			        location.href='login';  
			        }  
			    }  
				</script> 
    <div class="reindex"><a href="login" target="_parent">返回登录页</a></div>
    
    </div>


</body>

</html>






