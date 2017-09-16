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
  <jsp:include page="/WEB-INF/view/include/adminHeader.jsp">
  		<jsp:param value="album" name="fromJsp"/>
  </jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity"> 
  	 <form action="<c:url value="/admin/album/addAlbum.action"/>" enctype="multipart/form-data" method="post">
    		<div style="margin: 0 auto;width: 400px;">
  	 		上传图片：<input name="photo" style="margin-bottom: 10px;" class="button blue" type="file"><br>
    			<input type="text" name="alname" style="width: 400px;" placeholder="图片标题">
    			<br>
    			<textarea rows="" cols="" name="aldesc" style="width: 398px;height:50px;resize: none;" placeholder="图片描述"></textarea>
    			<br>
    		</div>
     </form>
     
  	 <form id="search" action="<c:url value="/admin/album/album.action"/>" method="post">
    		<div style="margin: 0 auto;width: 400px;">
  	 			<input name="alname" type="search" style="width: 353px;height: 24px;" value="${alname }" placeholder="搜索图片标题">
  	 			<input name="prevOrNext" id="prevOrNext" type="hidden" value="">
  	 			<input name="firstPage" value="true" type="hidden" id="firstPage">
				<input type="submit" style="margin: 0;" value="搜索">
    		</div>
     </form>
  	 <form action="<c:url value="/admin/album/setPostPalbumidByPostId.action"/>" method="post">
    		<div style="margin: 0 auto;width: 400px;">
    			<select name="pid" style="margin-top: 3px;width: 230px;height: 30px;">
    					<option value="">设置博文封面</option>
    				<c:forEach items="${postList }" var="post">
	    				<option value="${post.pid }">${post.ptitle }</option>
    				</c:forEach>
    			</select>
  	 			<input name="palbumid" type="text" style="width: 115px;height: 24px;" placeholder="请填写图片id">
				<input type="submit"  value="添加">
    		</div>
     </form>
    <div id="footer">
      <div class="footer-top"></div>
    </div>
    <h2>相册列表</h2>
    	
    <!-- Begin Latest Works -->
	    <div id="carousel-scroll">
	    <a  onclick="albumListSearchPaging('prev')" id="prev">上一页</a>
	    <a  onclick="albumListSearchPaging('next')" id="next">下一页</a>
	    </div>
   		<c:forEach items="${albumList }" var="album">
   			<div style="display: inline-block; margin-right: 14px;margin-top:10px; text-align: center;">
   				<span>id:${album.aid}&nbsp;
   					title:
   					<c:if test="${!album.alname eq '' }">
   						${album.alname }
   					</c:if>
   					<c:if test="${album.alname eq '' }">
   						null
   					</c:if>
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
function albumListSearchPaging(page){
	$("#prevOrNext").val(page);
	$("#firstPage").val("false");
	$("#search").submit();
}
</script>
</body>
</html>