<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="contentBox">
<form id="addForm" name="addForm">
 	<div id="add_layout">
 	<label for="userid"><b>아이디</b></label>
    <input type="text" placeholder="아이디 입력" name="userid" required>
    <br>
     <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="비밀번호 입력" name="password" required>
     <br>
    <label for="email"><b>이 름</b></label>
    <input type="text" placeholder="이 름 입 력" name="name" required>
     <br>
    <label for="email"><b>주민번호(생년월일-앞자리)</b></label>
    <input type="text" placeholder="(예시) 900101-1" name="ssn" required>
    <br>
       <label for="userid"><b>소속팀</b></label> <br>
           <input type="radio" name="teamid" 
           		value="none" checked="checked" />없음
           <input type="radio" name="teamid" 
           		value="yanolja" />야놀자
           <input type="radio" name="teamid" 
           		value="jieunzip" />지은집
           <input type="radio" name="teamid" 
           		value="turtleking" />터틀킹
           <input type="radio" name="teamid" 
           		value="coddingstar" />코딩스타
        <br /><br />
         <label for="userid"><b>프로젝트역할</b></label> <br>
        <select name="roll" id="roll">
        	 <option value="leader">팀장</option>
        	 <option value="front">프론트개발</option>
        	 <option value="back">백단개발</option>
        	 <option value="android">안드로이드개발</option>
        	 <option value="minfe">민폐</option>
        </select>
       <br /><br />
        <label for="userid"><b>수강과목</b></label> <br>
        <input type="checkbox" name="subject" 
        	value="java" checked="checked" /> Java
        <input type="checkbox" name="subject" value="clang" /> C언어
        <input type="checkbox" name="subject" value="JSP" /> JSP
        <input type="checkbox" name="subject" value="PHP" /> PHP
        <input type="checkbox" name="subject" value="nodejs" /> NodeJS
        <input type="checkbox" name="subject" value="linux" /> Linux
        <input type="checkbox" name="subject" value="html" /> HTML
        <input type="checkbox" name="subject" value="spring" /> Spring
    </div> <br>
     <button type="button" id="add_submit" class="add_submits">JOIN</button>
    </form>
    </div>
   <!--  <script>
	document.getElementById('joinFormBtn')
	.addEventListener('click',function(){
		var x = service.nullChecker(
				[document.joinForm.userid.value,
					document.joinForm.password.value,
					document.joinForm.name.value,
					document.joinForm.ssn.value
					]);
		if(x.checker){
			var form = document.getElementById('joinForm');
			form.action = "${context}/member.do" ;
			form.method = "post";
			member.join(x);
			document.form.gender = member.getGender();
			document.form.age = member.getAge();
			
			node.setAttribute('type','hidden');
			node.setAttribute('name','action');
			node.setAttribute('value','delete');
			var arr = [
					{name:'gender',value:member.getGender()},
					{name:'age',value:member.getAge()},
				];
			
			for(var i in arr){
				var node = document.createElement('input'); 
				node.setAttribute('type','hidden');
				node.setAttribute('name',arr[i].name);
				node.setAttribute('value',arr[i].value);
				form.appendChild(node);
			}
		     var node = document.createElement('input'); 
		     node.setAttribute(type,'hidden');
		     node.setAttribute(name,'page');
		     node.setAttribute(value,'joinResult');
		     
			form.submit();	
		}else{
			alert(x.text);
		}
	});
	</script> -->
 </body>
 </html>
 
 
 
 
 