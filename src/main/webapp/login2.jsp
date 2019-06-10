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
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${APP_PATH }/js/layui/css/layui.css" />
		<link rel="stylesheet" href="${APP_PATH }/css/login.css" />
	</head>
	<body class="layui-layout-body" onkeydown="onEnter();">
		<div class="layui-fluid" style="padding: 0px;"><!-- style="padding: 0px;" -->
			<canvas id="particle"></canvas>
			<div class="layui-form layui-form-pane layui-admin-login">
				<div class="layui-admin-login-header">
					<h1>天津市消防研究所</h1>
					<p>事故车辆填报系统</p>   
				</div>
				<form action="/TJXF1/user/checkLogin" method="post">
				<div class="layui-form-item">
					<label class="layui-form-label"><i class="layui-icon layui-icon-username"></i></label>
					<div class="layui-input-block">
						<input name="username" class="layui-input"  type="text" placeholder="请输入账号" autocomplete="off" />
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label"><i class="layui-icon layui-icon-password"></i></label>
					<div class="layui-input-block">
						<input name="password" class="layui-input"   type="password" placeholder="请输入密码" autocomplete="off"/>
					</div>
				</div>
				
				<div class="layui-form-item">
					<input type="checkbox" pane name="remember" title="记住密码" lay-skin="primary"> 
					<a href="javascript:;" style="margin-top: 10px;float: right;color: #009688;">忘记密码?</a>
				</div>
				<div class="layui-form-item">
					<div class="layui-btn-container">
						<button class="layui-btn layui-btn-fluid"  type="submit" lay-submit lay-filter="login">
							<i class="layui-icon layui-icon-ok-circle"></i>登陆
						</button>
					</div>
					<div class="layui-btn-container">
						<button class="layui-btn layui-btn-fluid" lay-submit lay-filter="register">
							<i class="layui-icon layui-icon-add-circle"></i>注册
						</button>
					</div>
				</div>
				</form>
				<!--底部-->
				<div class="layui-footer">© 2018 南开大学信息系统研究室</div>
			</div>
		</div>
		<script src="./js/layui/layui.js"></script>
		<script type="text/javascript" src="js/particle.min.js" ></script>
		<script>
			layui.use(['layer','form'],function(){
				var layer = layui.layer
				,form = layui.form
				,$ = layui.jquery;
				//监控表单提交
				form.on('submit(login)', function(data){
					var obj = data.field;
					var flag='${loginflag}';
					if(flag=='fail'){
						alert('账号或密码不正确', {icon: 5}); 
					}
					/* if(obj.username==null||obj.userpassword==null){
						layer.msg('账号或密码不正确', {icon: 5});
					} */
					
					
					 /* if(obj.username==null||obj.userpassword==null){
						window.location.href="./index.html";
					}else{
						layer.msg('账号或密码不正确', {icon: 5});
					}  */
				});
				//监控注册
				form.on('submit(register)', function(data){
					layer.open({
						title:"用户注册",
						type: 2,
						content:"./register.html",
						area: ['400px', '250px']
					});
				});
			})
			//登陆按钮绑定回车
			function onEnter(){
				if(window.event.keyCode == 13){
					document.getElementsByTagName("button")[0].click();
				}
			}
			var particle = new Particle('#particle', {
				effect: 'line'
			});
		</script>
	</body>
</html>