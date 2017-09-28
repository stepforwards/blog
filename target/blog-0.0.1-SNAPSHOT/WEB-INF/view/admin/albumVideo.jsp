<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="page" uri="http://forward.com/common/" %>
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
<link rel="stylesheet" type="text/css" href="style/css/bootstrap.min.css" media="all" />
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
  <jsp:include page="/WEB-INF/view/include/adminHeader.jsp">
  		<jsp:param value="album" name="fromJsp"/>
  </jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity"> 
  	<h2>视频列表</h2>
    <div id="footer">
      <div class="footer-top"></div>
       <page:page url="${pageContext.request.contextPath }/front/album/albumVideo.action"></page:page>
    </div>
   
   
    <!-- Begin Latest Works -->
   		<form class="download-box" style="box-sizing: border-box;" action="<c:url value="/admin/album/addVideo.action"/>" method="post" >
        	<input class="form-control" name="vname" type="text" style="width: 250px;height: 30px;display: inline-block;" placeholder="视频名称">
        	<input class="form-control" name="vurl" type="text" style="width: 400px;height: 30px;display: inline-block; margin-left: 30px;margin-right: 45px;" placeholder="视频URL">
        	<input style="color:white;background-color: #3388ff;box-sizing: border-box;border-radius: 5px 4px 3px 2px;height: 30px; " type="submit" value="添加视频">
        	<span style="float: right;">&nbsp;&nbsp;</span>
	    </form>
    	<c:forEach items="${pages.rows }" var="video">
	        <div class="note-box">
		        <form id="updateVideo${video.vid}" action="<c:url value="/admin/album/updateVideo.action"/>" method="post">
		        	<input name="vname" class="form-control" style="width: 250px;height: 30px;display: inline-block;" value="${video.vname }" placeholder="视频名称">
		        	  <!-- <span>3</span> -->
		        	<input name="vurl" class="form-control" style="width: 400px;height: 30px;display: inline-block;margin-left: 30px;" value="${video.vurl }" placeholder="视频URL" style="width: 500px;">
		        	<input type="hidden" name="vid" value="${video.vid}">
		        	<a href="<c:url value="/admin/album/deleteVideo.action"/>?vid=${video.vid}" style="float: right;margin-right: 9px;">删除</a>
		        	<span style="float: right;">&nbsp;&nbsp;</span>
		        	<a onclick="updateCategories(${video.vid})" style="float: right;">更新</a>
		        </form>
	        </div>
    	</c:forEach>
   		
	   <!--  <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c1.jpg" alt="" /> </a>  <a>编辑</a> <a>删除</a> 
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c2.jpg" alt="" /> </a> <a>删除</a>
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c3.jpg" alt="" /> </a> <a>删除</a>
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c4.jpg" alt="" /> </a> <a>删除</a>
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c5.jpg" alt="" /> </a> <a>删除</a>
	    <a href="#"> <span class="overlay details"></span><img style="display: inline-block;" src="style/images/art/c6.jpg" alt="" /> </a> <a>删除</a> -->
    <!-- End Latest Works -->
	<div class="hr1"></div>
  </div>
  <!-- End Container -->
  
  <div id="copyright" class="opacity">
    <p>© 2017 Forward</p>
  </div>
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>
<script type="text/javascript">
function updateVideo(vid) {
	$("#updateVideo"+vid).submit();
}

</script>
</body>
</html>