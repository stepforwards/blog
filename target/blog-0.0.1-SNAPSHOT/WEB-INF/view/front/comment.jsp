<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="page" uri="http://forward.com/common/" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html lang="en-ZH">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>Forward's Blog</title>
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
  <jsp:include page="/WEB-INF/view/include/header.jsp">
  		<jsp:param value="comment" name="fromJsp"/>
  </jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity">
    <div class="full-width">
      <h3>留言</h3>
      <c:forEach items="${pages.rows }" var="liuYan">
	      <div class="quote">
	        <blockquote>${liuYan.cocontent }</blockquote>
	        <span>by <em>${liuYan.coname }</em></span> 
	      </div>
      </c:forEach>
      
    </div>
     <page:page url="${pageContext.request.contextPath }/front/comment/comment.action"></page:page>
    <!-- End Full Width -->
    <jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
    
  </div>
  <!-- End Container -->
  <jsp:include page="/WEB-INF/view/include/copyright.jsp"></jsp:include>
  
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>