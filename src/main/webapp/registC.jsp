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
		        <script type="text/javascript" src="${APP_PATH }/assets/js/register.js"></script>
		        
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
                        			<h3>新用户注册</h3>
                            		<p id="normal">请输入用户名和密码</p>
                            		<!-- <p id="fail" hidden="true" style="color:red;">用户名或密码错误</p>  -->
                        		</div>
                        		<div class="form-top-right">
                        		<!-- 	<i class="fa fa-lock"></i> -->
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="/TJXF1/user/signup" method="post" onsubmit="return validateForm()">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="username">Username</label>
			                        	<input  type="text" name="username" placeholder="用户名" class="form-username form-control" id="form-username" onblur="checkUsername(this)"><span id="tishi1"></span>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="username">Password</label>
			                        	<input type="password" name="password" placeholder="密码" class="form-password form-control" id="form-password1" onblur="checkPassword(this)"><span id="tishi2"></span>
			                        </div>
			                        <div class="form-group">			                        
			                        	<label class="sr-only" for="username">PasswordaAgain</label>
			                        	<input type="password" name="password1" placeholder="确认密码" class="form-password form-control" id="form-password2" onkeyup="validate()"><span id="tishi"></span>
			                        </div>
			                            <button type="submit" class="btn" id = "btn">注册</button>
			                          
			                    </form>
		                    </div>
                        </div>
                    </div>
                    
                    <script >
                    	function validateOne(){
                    		var username = document.getElementById("form-username").value;
                    		if(username.length == 0 || username == "" || username == null){
                    			alert('错误！')
                    		}
                    		
                    	}
                    </script>
                    
                    <script>
					function validate() {
					/* var username = document.getElementById("form-username").value; */
					var pw1 = document.getElementById("form-password1").value;
					var pw2 = document.getElementById("form-password2").value;
					/* if(username.length = 0 || username == "" || username == null){
						document.getElementById("submit").disabled = true;
					} */
					
					if(pw1 == pw2) {
					document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
					document.getElementById("submit").disabled = false;
					}
					else {
					document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
					document.getElementById("submit").disabled = true;
					}
					}
					</script>
                    

             
        
        <script type="text/javascript">
          
                    $("#form-username").blur(function(){
                    	
                       $.ajax({
                        url:"/TJXF1/user/registerUserName",
                        type: "POST",
                        datatype:"text",
                        contentType :"application/x-www-form-urlencoded",
                        data:{username:$("#form-username").val()},
                        success:function(data){
                            //alert(typeof data);测试代码
                          // alert(data);
                            if(data == "success"){
                            	$("#btn").attr("disabled",false);//释放提交按钮
                                //alert('该用户名可用！')
                            }else{
                            	$("#btn").attr("disabled",true);
                            	alert('该用户名已经存在！')
                            }  
                        }
                        
                    }) 
                    
                });
        
        </script>
                    
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
	
	
</body>
</html>