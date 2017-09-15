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
  	<jsp:param value="post" name="fromJsp"/>
  </jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity"> 
    <a href="<c:url value="/admin/post/newPost.action"/>" class="button blue">新建博文</a>
    <div id="footer">
      <div class="footer-top"></div>
    </div>
    <!-- Begin Latest Works -->
    <h2>文章列表</h2>
      <form class="search" action="<c:url value="/admin/post/postList.action"/>" method="post">
      	<div class="searchform" style="width: 300px;display: inline-block;">
	      	 <input  type="text" id="s" name="ptitle" value="${kvo.ptitle }" placeholder="请输入文章标题" onblur="searchform()"/>
      	</div>
      	 <span class="categories" style="margin-right: 20px;">
       	  分类：<select name="pcategoriesid">
       	  			<option value="0">无分类</option>
       				<c:forEach items="${categoriesList }" var="categories">
       					<option value="${categories.cid }" ${categories.cid eq kvo.pcategoriesid ? "selected" : "" }>${categories.cname }</option>
       				</c:forEach>
       		 </select>
       	 </span>
       	 <span  style=" display: inline-block;">
       	 标签：
       	 	 <select name="pcategoriesid">
       	 	 		<option value="0">全部</option>
       				<c:forEach items="${tagList }" var="tag">
       					<option value="${tag.tid }" ${tag.tid eq kvo.tid ? "selected" : "" }>${tag.tname }</option>
       				</c:forEach>
       		 </select>
         			&nbsp;
         </span>
      </form>
      <br>
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
	          <td><input type="checkbox" onclick="setFinePost(this.value,this.checked)" ${post.pfine } value="${post.pid }"></td>
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
<script type="text/javascript">
	function searchform(){
		$(".search").submit();
	}
	function setFinePost(pid,check){
		//如果需要发送json字符串，需要设置
		$.ajax({
			data:{"pid":pid,"pfine":check},
			dataType:"text",
			type:"get",
			url:"${pageContext.request.contextPath}/admin/post/setFinePostById.action"
		});
	}
</script>
</body>
</html>







        