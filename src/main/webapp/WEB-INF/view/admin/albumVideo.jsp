<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forward's Blog|Admin</title>
<jsp:include page="/WEB-INF/view/include/style.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/include/script.jsp"></jsp:include>
<script type="text/javascript">
jQuery(document).ready(function($){
	$('.forms').dcSlickForms();
});
</script>
<script type="text/javascript">

$(document).ready(function()
{
	$("#showcase").awShowcase(
	{
		content_width:			900,
		content_height:			400,
		auto:					true,
		interval:				3000,
		continuous:				false,
		arrows:					true,
		buttons:				true,
		btn_numbers:			true,
		keybord_keys:			true,
		mousetrace:				false, /* Trace x and y coordinates for the mouse */
		pauseonover:			true,
		stoponclick:			false,
		transition:				'fade', /* hslide/vslide/fade */
		transition_delay:		0,
		transition_speed:		500,
		show_caption:			'onload' /* onload/onhover/show */
	});
});

</script>

</head>
<body>
<!-- Fullscreen backgrounds -->
<div id="thumbs">
<a href="style/images/art/bg1.jpg">1</a>
<a href="style/images/art/bg2.jpg">2</a>
<a href="style/images/art/bg3.jpg">3</a>
<a href="style/images/art/bg4.jpg">4</a>
<a href="style/images/art/bg5.jpg">5</a>
<a href="style/images/art/bg6.jpg">6</a>
</div>
<div id="superbgimage">
	<div class="scanlines"></div>
</div>
<!-- End Fullscreen backgrounds -->
<!-- Begin Wrapper -->
<div id="wrapper">
  
  <!-- Begin Menu -->
  <jsp:include page="/WEB-INF/view/include/adminHeader.jsp"></jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity"> 
    <div id="footer">
    		<a href="<c:url value="#"/>" class="button blue">添加视频</a>
      <div class="footer-top"></div>
    </div>
   
    <h2>视频列表</h2>
    <!-- Begin Latest Works -->
   
	    <div id="carousel-scroll"><a href="#" id="prev">上一页</a><a href="#" id="next">下一页</a></div>
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c1.jpg" alt="" /> </a>  <a>编辑</a> <a>删除</a> 
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c2.jpg" alt="" /> </a> <a>删除</a>
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c3.jpg" alt="" /> </a> <a>删除</a>
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c4.jpg" alt="" /> </a> <a>删除</a>
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c5.jpg" alt="" /> </a> <a>删除</a>
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c6.jpg" alt="" /> </a> <a>删除</a>
    <!-- End Latest Works -->
	
  </div>
  <!-- End Container -->
  
  <div id="copyright" class="opacity">
    <p>© 2017 Forward</p>
  </div>
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>