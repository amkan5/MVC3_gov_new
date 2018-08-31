<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form id="retriveForm">
<div id="contentBox" style="width:100%; height:500px;">
		<table id="mypageTable" style="width:100%; height:70%;" >
			<tr>
				<td id="mypageImg" rowspan="3" colspan="2">
					<img  src="${img}/${profile}" alt="" />
				</td>
				<td style="width: 50px">ID</td>
				<td>${user.userid}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${user.name}</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>${user.password}</td>
			</tr>
			<tr>
				<td style="width: 50px">성별</td>
				<td>${user.gender}</td>
				<td style="width: 50px">팀</td>
				<td>${user.teamid}</td>
			</tr>
			<tr>
				<td>나이</td>
				<td>${user.age}</td>
				<td>역할</td>
				<td>${user.roll}</td>
			</tr>
		</table>
		<input type="hidden" name="userid" value="${user.userid}" readonly="readonly"/>
		<input type="hidden" name="name" value="${user.name}" readonly="readonly"/>
		<input type="hidden" name="password" value="${user.password}" readonly="readonly"/>
		<input type="hidden" name="gender" value="${user.gender}" readonly="readonly"/>
		<input type="hidden" name="teamid" value="${user.teamid}" readonly="readonly"/>
		<input type="hidden" name="age" value="${user.age}" readonly="readonly"/>
		<input type="hidden" name="roll" value="${user.roll}" readonly="readonly"/>
	</div>
	</form>
<h2><a id="moveToUpdate">UPDATE FORM</a></h2>
<h2><a id="moveToDelete">DELETE FORM</a></h2>
<script>
$('#moveToUpdate').click(function(){
	$('#retriveForm').attr({
		action: "${context}/member/retrieve/modify",
		method: "POST"	
		}).submit();	
});

$('#moveToDelete').click(function(){
	$('#retriveForm').attr({
		action: "${context}/member/retrieve/remove",
		method: "POST"	
		}).submit();
});
</script>

