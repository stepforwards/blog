<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html lang="en-ZH">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<meta charset="UTF-8">
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
  <a href="style/images/art/bg2.jpg">1</a> 
  <a href="style/images/art/bg3.jpg">1</a> 
  <a href="style/images/art/bg4.jpg">1</a> 
  <a href="style/images/art/bg5.jpg">1</a> 
  <a href="style/images/art/bg6.jpg">1</a> 
</div>
<div id="superbgimage">
  <div class="scanlines"></div>
</div>
<!-- End Fullscreen backgrounds --> 
<!-- Begin Wrapper -->
<div id="wrapper">
  
  <!-- Begin Menu -->
 	<jsp:include page="/WEB-INF/view/include/header.jsp">
 		<jsp:param value="about" name="fromJsp"/>
 	</jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity">
    <div class="content">
      <h2>关于我</h2>
      <p>${user.uabout }</p>
      <br />
      <br />
      <br />
     
      <br />
    </div>
    <div class="sidebar">
      <div class="sidebar-box">
        <h4>地址</h4>
        <p>${user.uaddr }<br>
          <br>
          <span class="lite1">传真：</span>${user.ufax }<br>
          <span class="lite1">手机：</span>${user.utel }<br>
          <span class="lite1">邮箱：</span>${user.uemail }</p>
      </div>
      <div class="sidebar-box">
        <h4>我的位置</h4>
        <iframe width="265" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="${user.ulocation }"></iframe>
      </div>
    </div>
    
  <!-- End Container -->
  <jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
  </div>
  <jsp:include page="/WEB-INF/view/include/copyright.jsp"></jsp:include>
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>