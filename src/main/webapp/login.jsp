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
		<title>Insert title here</title>
		<!-- CSS -->
		        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
		        <link rel="stylesheet" href="${APP_PATH }/assets/bootstrap/css/bootstrap.min.css">
		        <link rel="stylesheet" href="${APP_PATH }/assets/font-awesome/css/font-awesome.min.css">
				<link rel="stylesheet" href="${APP_PATH }/assets/css/form-elements.css">
		        <link rel="stylesheet" href="${APP_PATH }/assets/css/style.css">
		
		        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		        <!--[if lt IE 9]>
		            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		        <![endif]-->
		
		        <!-- Favicon and touch icons -->
		        <link rel="shortcut icon" href="${APP_PATH }/assets/ico/favicon.png">
		        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${APP_PATH }/assets/ico/apple-touch-icon-144-precomposed.png">
		        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${APP_PATH }/assets/ico/apple-touch-icon-114-precomposed.png">
		        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${APP_PATH }/assets/ico/apple-touch-icon-72-precomposed.png">
		        <link rel="apple-touch-icon-precomposed" href="${APP_PATH }/assets/ico/apple-touch-icon-57-precomposed.png">
				
				  <!-- Javascript -->
		        <script type="text/javascript" src="${APP_PATH }/js/jquery-3.2.1.min.js"></script>
		        <script type="text/javascript" src="${APP_PATH }/assets/bootstrap/js/bootstrap.min.js"></script>
		        <script type="text/javascript" src="${APP_PATH }/assets/js/jquery.backstretch.min.js"></script>
		        <script type="text/javascript" src="${APP_PATH }/assets/js/scripts.js"></script>
		        
		        <!--[if lt IE 10]>
		            <script src="${APP_PATH }assets/js/placeholder.js"></script>
		        <![endif]-->
	 </head>
<body>

<!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>天津市事故车辆填报系统</strong></h1>
                            <div class="description">
                            	
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>管理员登录</h3>
                            		<p id="normal">请输入用户名和密码</p>
                            		<p id="fail" hidden="true" style="color:red;">用户名或密码错误</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="/TJXF1/user/checkLogin" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="username">Username</label>
			                        	<input type="text" name="username" placeholder="用户名" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="username">Password</label>
			                        	<input type="password" name="password" placeholder="密码" class="form-password form-control" id="form-password">
			                        </div>
			                        <div>
			                        <table width="100%">
                                      <tr>
                                       <td>
			                            <button type="submit" class="btn" >登录</button>		                     
			                           </td>              
                                      <td>&nbsp;&nbsp;&nbsp;</td> 
                                      <td>
			                            <button type="submit" class="btn" onclick="window.location.href='registC.jsp'">注册</button>
			                          </td>
									</tr>
									</table>
									</div> 
			                    </form>
		                    </div>
                        </div>
                    </div>
	                    <!-- <div class="row">
	                        <div class="col-sm-6 col-sm-offset-3 social-login">
	                        	<h3>...or login with:</h3>
	                        	<div class="social-login-buttons">
		                        	<a class="btn btn-link-2" href="#">
		                        		<i class="fa fa-facebook"></i> 
		                        	</a>
		                        	<a class="btn btn-link-2" href="#">
		                        		<i class="fa fa-twitter"></i> 
		                        	</a>
		                        	<a class="btn btn-link-2" href="#">
		                        		<i class="fa fa-google-plus"></i>
		                        	</a>
	                        	</div>
	                        </div>
	                    </div> -->
                </div>
            </div>
            
        </div>


      



<!-- <div id="login_panel">
	<form action="/SoilenvironmentMana/user/checkLogin" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input id="username" name="username" type="text"></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input id="password" name="password" type="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"></td>
			</tr>
		</table>
	</form>
</div> -->




<!--  <div id="signup_panel">
	<form action="/SoilenvironmentMana/user/signup" method="post">
		<table>
			<tr>
				
				<td><input id="username" name="username" type="text" placeholder="请输入用户名"></td>
			</tr>
			<tr>
				
				<td><input id="password" name="password" type="password" placeholder="请输入密码"></td>
			</tr>
			<tr>
				<td><input type="submit" value="注册"></td>
			</tr>
		</table>
	</form>

	</div>  -->
	
	
	<!-- <script type="text/javascript">
		$(function(){
			var flag='${loginflag}';
			
			if(flag=='fail'){
				$("#normal").attr("hidden",true);
				$("#fail").attr("hidden",false);
			}else{
				$("#normal").attr("hidden",false);
				$("#fail").attr("hidden",true);
			}
	
			
		
		})
	</script> -->
	<script type="text/javascript">
		$(function(){
			var flag='${loginflag}';
			
			if(flag=='fail'){
				//alert("用户名或密码错误！")
			}
		})
		</script>
	
	
</body>
</html>