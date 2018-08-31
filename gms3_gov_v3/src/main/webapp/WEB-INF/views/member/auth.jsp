<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <div id="menu_box">
	<ul id="menu">
		<li><a id="move_admin">ADMIN</a></li>
		<li><a id="move_login">LOGIN</a></li>
		<li><a id="move_add">JOIN</a></li>
	</ul>
</div> -->
<div id="member_nav">
 <div class="main-navigation navbar-fixed-top">
    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			  </button>
          <a class="navbar-brand" href="index.html">GMS</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a id="home_btn" href="#banner">Home</a></li>
            <li><a id="mypage_btn" href="#service">Mypage</a></li>
            <li><a id="remove_btn" href="#portfolio">Remove</a></li>
            <li><a id="logout_btn" href="#about">Logout</a></li>
            <li><a id="board_btn" href="#contact">Board</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
  <script>
  $('#mypage_btn').click(function(){
		location.href = "${context}/member/retrieve";
	});
	$('#remove_btn').click(function(){
		location.href = "${context}/move/auth/member/remove";
	});
	$('#home_btn').click(function(){
		location.href = "${context}/move/auth/common/content";
	});
	$('#logout_btn').click(function(){
		location.href = "${context}/member/logout";
	});
  </script>