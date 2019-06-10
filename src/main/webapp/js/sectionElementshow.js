/**
 * sectionElementshow.jsp关联
 */

/**
 * 企业和学生管理
 */

$(function(){
	
//查询学生
	$("#searchstudent").click(function(){
		
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


	

		
})



