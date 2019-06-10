/**
 * 企业和学生管理
 */

$(function(){
//--------------------------------------------------------------------------------------------	
	$("#addenterprise").click(function(){
		$("#rightmainshow").attr("hidden",true);
		$("#rightmain").attr("hidden",false);
		$("#editenterprise").attr("hidden",false);
		$("#defaultdiv").attr("hidden",true);
	});
	
//查询企业
	$("#searchenterprise").click(function(){
		$("#rightmainshow").attr("hidden",false);
		$("#rightmain").attr("hidden",true);
		$.ajax({
			type:"post",  
			dataType : "json", 
			url : "MESsearchEnterprise", //要访问的后台地址  
			contentType :"application/x-www-form-urlencoded",
			data : {
				
				enterprise_search_content :$("#enterprisecontent").val()
				
			}, //要发送的数据，采用josn格式
			beforeSend : function() {
			},
			complete : function() {
				
			},  
			success : function(data) { //data为返回的数据
				
				$("#rightmainshow").html("");
				$("#rightmainshow").append("<table><tr style='height:39px;background-color: #E6E6FA;'>" +
				"<td width='300px;'>公司名称</td><td width='300px;'>地址</td><td width='100px;'></td></tr>");
				$.each(data.jsonarray,function(index,content){  
					$("#rightmainshow").append(
							"<tr class='userinfoItem'><td width='300px;'>" +
							content.name+"</td><td width='300px;'>"+content.adress+"</td><td width='100px;'><form id='delEpForm"+content.enterpriseID+"' action='MESdeleteEnterprise' method='post'>" +
							"<input type='text' name='enterprise.enterpriseID' value='"+content.enterpriseID+"' hidden='true'>" +
							"<input style='width:56px;height:36px;' type='button' value='删除' onclick='delEp("+content.enterpriseID+")'></form>"+
							"</td></tr>"
					);
               	 
              });  
				$("#rightmainshow").append("</table>");
				
				
			},
			error : function(XMLResponse) {
				alert(XMLResponse.responseText);
				
			}
		});	
	})

//企业代号重复检验
	$('#enterpriseID').change(function() {
		var id=$('#enterpriseID').val();
		if (id.length == 0) {
			$('#idprompt').text("企业号不能为空").css({
				"color" : "red"
			});
		}else if(id.length>8){
			$('#idprompt').text("企业号过长！！！").css({
				"color" : "red"
			});
		}else{
			
			var pattern=/^[1-9]\d*$/;
			var pass=pattern.test(id);
				
			if(!pass){
				$('#idprompt').html("<font color='red'>企业代号必须为数字</font>");
				$('#enterpriseID').val("");
				$("#submitbut").attr("disabled","disabled");
			}else{
				$("#submitbut").attr("disabled",false);
				$("#idprompt").html("");
				
				$.ajax({
					type:"post",  
					dataType : "text", 
					url : "MEScheckEnterpriseID", //要访问的后台地址  
					contentType :"application/x-www-form-urlencoded",
					data : {
						checkenterpriseID : $('#enterpriseID').val()
					}, //要发送的数据，采用josn格式
					beforeSend : function() {
					},
					complete : function() {
					},  
					success : function(data) { //data为返回的数据
						if (data == "legalName") {
							$("#submitbut").attr("disabled",false);
							$("#idprompt").html("");
							
						} else {
							$('#idprompt').html("<font color='red'>企业号:"+data+" 已经存在，请重新输入。</font>");
							$('#enterpriseID').val("");
							$("#submitbut").attr("disabled","disabled");
							
						};
					},
					error : function(XMLResponse) {
						alert(XMLResponse.responseText);
					}
				});
				
			}
			
		}
		
		
	});
	
//提交内容检验
	$("#submitbut").click(function(){
		var enterpriseid=$("#enterpriseID").val();
		var enterprisename=$("#enterprisename").val();
		var enterpriseadress=$("#enterpriseadress").val();
		if(enterpriseid.length==0||enterpriseid.length>8||enterprisename.length==0||enterpriseadress.length==0){
			alert("企业信息不完整或有误！！！");
		}else{
			$("#addenterpriseform").submit();
		}
		
	})
	
//------------------------------------------------------------------------------------------
	$("#addstudent").click(function(){
		$("#rightmainshow").attr("hidden",true);
		$("#rightmain").attr("hidden",false);
		$("#editstudent").attr("hidden",false);
		$("#defaultdiv").attr("hidden",true);
	});
	
//查询学生
	$("#searchstudent").click(function(){
		$("#rightmainshow").attr("hidden",false);
		$("#rightmain").attr("hidden",true);
		$.ajax({
			type:"post",  
			dataType : "json", 
			url : "MESsearchStudent", //要访问的后台地址  
			contentType :"application/x-www-form-urlencoded",
			data : {
				
				student_search_content :$("#stuentcontent").val()
				
			}, //要发送的数据，采用josn格式
			beforeSend : function() {
			},
			complete : function() {
				
			},  
			success : function(data) { //data为返回的数据
				
				$("#rightmainshow").html("");
				$("#rightmainshow").append("<table><tr style='height:39px;background-color: #E6E6FA;'>" +
						"<td width='120px;'>学号</td><td width='100px;'>姓名</td><td width='200px;'>学院</td><td width='200px;'>专业</td><td width='100px;'></td></tr>");
				$.each(data.jsonarray,function(index,content){  
					$("#rightmainshow").append(
							"<tr class='userinfoItem'><td width='120px;'>" +content.studentNumber+"</td><td width='100px;'>"
							+content.studentName+"</td><td width='200px;'>"+content.department+"</td><td width='200px;'>"+content.major+"</td><td width='100px;'>" +
									"<form id='delStuFor"+content.studentNumber+"' action='MESdeleteStudent' method='post'>" +
							"<input type='text' name='student.studentNumber' value='"+content.studentNumber+"' hidden='true'>" +
							"<input style='width:56px;height:30px;' type='button' value='删除' onclick='delStu("+content.studentNumber+")'></form></td>"+
							"</tr>"
					);
               	 
              });  
				$("#rightmainshow").append("</table>");
				
				
			},
			error : function(XMLResponse) {
				alert(XMLResponse.responseText);
				
			}
		});	
	})

//学号重复检验
	$('#studentnumber').change(function() {
		var id=$('#studentnumber').val();
		if (id.length == 0) {
			$('#idprompt').text("学号不能为空").css({
				"color" : "red"
			});
		}else if(id.length>13){
			$('#idprompt').html("<font color='red'>学号过长！！！</font>");
		}else{
			
			var pattern=/^[1-9]\d*$/;
			var pass=pattern.test(id);
				
			if(!pass){
				$('#idprompt').html("<font color='red'>学号必须为数字</font>");
				$('#studentnumber').val("");
				$("#submitbutstu").attr("disabled","disabled");
			}else{
				$("#submitbutstu").attr("disabled",false);
				$("#idprompt").html("");
				
				$.ajax({
					type:"post",  
					dataType : "text", 
					url : "MEScheckStudentID", //要访问的后台地址  
					contentType :"application/x-www-form-urlencoded",
					data : {
						checkstudentID : $('#studentnumber').val()
					}, //要发送的数据，采用josn格式
					beforeSend : function() {
					},
					complete : function() {
					},  
					success : function(data) { //data为返回的数据
						if (data == "legalName") {
							$("#submitbutstu").attr("disabled",false);
							$("#idprompt").html("");
							
						} else {
							$('#idprompt').html("<font color='red'>学号:"+data+" 已经存在，请重新输入。</font>");
							$('#studentnumber').val("");
							$("#submitbutstu").attr("disabled","disabled");
							
						};
					},
					error : function(XMLResponse) {
						alert(XMLResponse.responseText);
					}
				});
				
			}
			
		}
		
		
	});
	
//提交内容检验
	$("#submitbutstu").click(function(){
		var studentnumber=$("#studentnumber").val();
		var studentname=$("#studentname").val();
		var studentpassword=$("#studentpassword").val();
		if(studentnumber.length==0||studentnumber.length>13||studentname.length==0||studentpassword.length==0){
			alert("学生信息不完整或有误！！！");
		}else{
			$("#addstudentform").submit();
		}
		
	})
//下拉地址栏动态添加选项
	$("#department").change(function(){
		var selectdepartment=$("#department option:selected").text();
		if(selectdepartment=="软件学院"){
			$("#major").html("");
			$("#major").append(
     						"<option value='软件工程' selected='selected'>软件工程</option>"+
     						"<option value='信息安全'>信息安全</option>");
		}else if(selectdepartment=="艺术与设计学院"){
			$("#major").html("");
			$("#major").append(
						"<option value='艺术学' selected='selected'>艺术学</option>"+
						"<option value='工业设计'>工业设计</option>");
		}else if(selectdepartment=="新闻传播学院"){
			$("#major").html("");
			$("#major").append(
						"<option value='戏剧影视文学' selected='selected'>戏剧影视文学</option>"+
						"<option value='播音主持与艺术'>播音主持与艺术</option>");
		}
	})
		
})



//-----------------------------------------------------------------------------
//删除企业函数
	function delEp(epID){
		var formName="delEpForm"+epID;
		
		$( "#dialog-confirm" ).dialog({
		       
	          draggable : false,
	          height:210,
	          resizable : true,
	          modal : true,
	          closeText : '关闭',
		      show : true,
		      hide : true,
		      buttons: {
		        "放弃": function() {
		          $( this ).dialog( "close" );
		        },
		        "确认": function() {
		          $( this ).dialog( "close" );
		          $("#"+formName).submit();
		        }
		      }
		    });
		
	}
//-----------------------------------------------------------------------------
//删除学生函数
	function delStu(studentNumber){
		var formName="delStuFor"+studentNumber;
		
		$( "#dialog-confirm" ).dialog({
		       
	          draggable : false,
	          height:210,
	          resizable : true,
	          modal : true,
	          closeText : '关闭',
		      show : true,
		      hide : true,
		      buttons: {
		        "放弃": function() {
		          $( this ).dialog( "close" );
		        },
		        "确认": function() {
		          $( this ).dialog( "close" );
		          $("#"+formName).submit();
		        }
		      }
		    });
		
	}
	