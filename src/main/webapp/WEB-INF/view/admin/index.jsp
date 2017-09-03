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
    <a href="<c:url value="/admin/post/newPost.action"/>" class="button blue">新建博文</a>
    <div id="footer">
      <div class="footer-top"></div>
    </div>
    <!-- Begin Latest Works -->
    <h2>文章列表</h2>
      <div id="carousel-scroll"><a href="#" id="prev">上一页</a><a href="#" id="next">下一页</a></div>
      <table>
          <!-- <th class="center"><h4>
            Centered Header 3
            </h4></th> -->
        <tr>
          <th><h4>序号</h4></th>
          <th><h4>标题</h4></th>
          <th><h4>分类</h4></th>
          <th><h4>标签</h4></th>
          <th><h4>创建时间</h4></th>
          <th><h4>更新时间</h4></th>
          <th><h4>优秀</h4></th>
          <th><h4>编辑</h4></th>
          <th><h4>删除</h4></th>
        </tr>
        <c:forEach items="${postList }" var="post" varStatus="status">
	        <tr>
	          <td>${status.count }</td>
	          <td>${post.ptitle }</td>
	          <td>${post.categoriesname }</td>
	          <td>	
		          <c:forEach items="${post.tagList }" var="tag">
		          			${tag.tname }&nbsp;
		          </c:forEach>
	          </td>
	          <td>${post.pinserttime }</td>
	          <td>${post.pupdatatime }</td>
	          <td></td>
	          <td><a href="<c:url value="/admin/post/editPostById.action"/>?pid=${post.pid }">#</a></td>
	          <td><a href="<c:url value="/admin/post/deletePostById.action"/>?pid=${post.pid }">X</a></td>
	        </tr>
        </c:forEach>
        
      </table>
      <div class="hr1"></div>
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







        