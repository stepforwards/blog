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
  	<div style="width: 820px;position: relative;margin: 0 auto;">
  	 <form id="uploadAlbum" action="<c:url value="/admin/album/addAlbum.action"/>" enctype="multipart/form-data" style="width: 400px;display: inline-block;" method="post">
    		<div style="margin: 0 auto;width: 400px;display: inline-block;">
  	 		上传图片：<input name="photo" style="margin-bottom: 10px;" class="button blue" type="file"><br>
    			<input type="text" name="alname" style="width: 400px;" placeholder="图片标题">
    			<textarea rows="" cols="" name="aldesc" style="width: 398px;height:50px;resize: none;" placeholder="图片描述"></textarea>
    			<input type="button" style="margin: 0;width: 403px;" onclick="uploadAlbum()" value="上传">
    		</div>
     </form>
     <div style="width: 400px;display: inline-block;position: absolute;top: 23%;left: 50%;">
  	 <form id="search" action="<c:url value="/admin/album/album.action"/>" style="width: 400px;" method="post">
    		<div style="width: 400px;">
  	 			<input name="alname" type="search" style="width: 353px;height: 24px;" value="${alname }" placeholder="搜索图片标题">
				<input type="submit" style="margin: 0;" value="搜索">
    		</div>
     </form>
  	 <form id="setPostPalbumidByPostId" action="<c:url value="/admin/album/setPostPalbumidByPostId.action"/>" style="width: 400px;"  method="post">
    		<div style="width: 400px;">
    			<select id="pid" name="pid" style="margin-top: 3px;width: 230px;height: 30px;">
    					<option value="">设置博文封面</option>
    				<c:forEach items="${postList }" var="post">
	    				<option value="${post.pid }">${post.ptitle }</option>
    				</c:forEach>
    			</select>
  	 			<input name="palbumid" type="text" style="width: 115px;height: 24px;" placeholder="请填写图片id">
				<input type="button" onclick="setPostPalbumidByPostId()"  value="添加">
    			
    		</div>
     </form>
  	 <form id="setVideoValbumidByPostId" action="<c:url value="/admin/album/setVideoValbumidByVideoId.action"/>" style="width: 400px;"  method="post">
    		<div style="width: 400px;">
    			<select id="vid" name="vid" style="margin-top: 3px;width: 230px;height: 30px;">
    					<option value="">设置视频封面</option>
    				<c:forEach items="${videoList }" var="video">
	    				<option value="${video.vid }">${video.vname }</option>
    				</c:forEach>
    			</select>
  	 			<input name="valbumid" type="text" style="width: 115px;height: 24px;" placeholder="请填写图片id">
				<input type="button" onclick="setVideoValbumidByPostId()"  value="添加">
    		</div>
     </form>
     </div>
    </div>
   			
    			
    <div id="footer">
      <div class="footer-top"></div>
		  <page:page url="${pageContext.request.contextPath }/admin/album/album.action"></page:page>
    </div>
    <h2>相册列表</h2>
    			
    <!-- Begin Latest Works -->
	    <div id="carousel-scroll">
	    </div>
   		<c:forEach items="${pages.rows }" var="album">
   			<div style="display: inline-block; margin-right: 14px;margin-top:10px; text-align: center;">
   				<span>id:${album.aid}&nbsp;
   					title:
   					<c:choose>
   						<c:when test="${album.alname eq '' }">
   							null
   						</c:when>
   						<c:otherwise>
   							${album.alname }
   						</c:otherwise>
   					</c:choose>
   				</span>
   				<br>
		    	<a href="/${album.alurl }"> 
		    		<span class="overlay details"></span>
		    		<img style="display: inline-block; width: 196px;height: auto;" src="/${album.alurl }" alt="${album.alname }" />
		        </a>
		        <a href="<c:url value="/admin/album/deleteAlbum.action"/>?aid=${album.aid}">x</a>
		    </div>
   		</c:forEach>
    <!-- End Latest Works -->
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

function uploadAlbum() {
	if($(':file').val() !== ""){
		$('#uploadAlbum').submit();
	}
}
function setPostPalbumidByPostId() {
	if($('#pid').val() !== ""){
		$("#setPostPalbumidByPostId").submit();
	}
}
function setVideoValbumidByPostId() {
	if($('#vid').val() !== ""){
		$("#setVideoValbumidByPostId").submit();
	}
}
</script>
</body>
</html>