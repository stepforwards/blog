<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="page" uri="http://forward.com/common/" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en-ZH">
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
 		<jsp:param value="comment" name="fromJsp"/>
 	</jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity">
  	<form id="selectCommentByPostId" action="<c:url value="/admin/comment/commentList.action"/>" style="width: 400px;"  method="post">
    		<div style="width: 400px;">
    			<select id="pid" name="copostid" onchange="selectCommentByPostId()" style="margin-top: 3px;width: 230px;height: 30px;">
    					<option value="0">全部博文评论</option>
    				<c:forEach items="${postList }" var="post">
	    				<option value="${post.pid }" ${KVO.copostid eq post.pid ? "selected" : "" }>关于博文${post.ptitle }的评论</option>
    				</c:forEach>
    			</select>
    		</div>
     </form>
  
  	<div id="footer" style="padding-top: 20px;padding-bottom: 5px;">
      <div class="footer-top"></div>
       <page:page url="${pageContext.request.contextPath }/admin/comment/commentList.action"></page:page>
    </div>
    <div class="full-width">
    
     <table>
        <tr>
          <th><h4>序号</h4></th>
          <th><h4>昵称</h4></th>
          <th><h4>Email</h4></th>
          <th><h4>内容</h4></th>
          <th><h4>回复人</h4></th>
          <th><h4>归属博文</h4></th>
          <th><h4>添加时间</h4></th>
          <th><h4>删除</h4></th>
        </tr>
        <c:forEach items="${pages.rows }" var="comment" varStatus="status">
	        <tr>
	          <td>${status.count }</td>
	          <td>${comment.coname }</td>
	          <td>${comment.coemail }</td>
	          <td>${comment.cocontent }</td>
	          <td>${comment.coreplyname }</td>
	          <td>${comment.ptitle }</td>
	          <td>${comment.coinserttime }</td>
	          <td><a href="<c:url value="/admin/comment/deleteCommentById.action"/>?coid=${comment.coid }">X</a></td>
	        </tr>
        </c:forEach>
      </table>
    </div>
    <!-- End Full Width -->
    <div class="hr1"></div>
  </div>
    <div class="clear"></div>
  <!-- End Container -->
  
  <div id="copyright" class="opacity">
    <p>© 2017 Forward</p>
  </div>
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>

<script type="text/javascript">
	function selectCommentByPostId() {
		$("#selectCommentByPostId").submit();
	}
</script>
</body>
</html>