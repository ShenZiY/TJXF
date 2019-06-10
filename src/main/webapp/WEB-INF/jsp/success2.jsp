<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/global.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>success</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%-- <meta http-equiv="refresh" content="3; url=${path }"> --%> 
	
  </head>
  
  <body>
  
				<b><font color="green">恭喜您注册成功!</font></b><br>
				
				<b><span id="sp" style="color:red">3</span>秒后跳转到登陆界面.....</b>
				
				<script type="text/javascript">  
    				onload=function(){  
        				setInterval(go, 1000);  
    				};  
   					var x=3; //利用了全局变量来执行  
    				function go(){  
    				x--;  
			        if(x>0){  
			        document.getElementById("sp").innerHTML=x;  //每次设置的x的值都不一样了。  
			        }else{  
			        location.href='login';  
			        }  
			    }  
				</script> 

  </body>
</html>

 