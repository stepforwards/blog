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
 	<jsp:include page="/WEB-INF/view/include/adminHeader.jsp">
 		<jsp:param value="about" name="fromJsp"/>
 	</jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <form action="<c:url value="/admin/user/updateUserInfo.action"/>" method="post">
  <div id="container" class="opacity">
    <div class="content">
      <h2>关于我</h2>
      <p><textarea rows="10" cols="10" style="width:100%;resize: none;font-size: 16px;" name="uabout">${user.uabout }</textarea></p>
      <br />
      <h2>爱好</h2>
      <p><textarea rows="10" cols="10" style="width:100%;resize: none;font-size: 16px;" name="uhobby">${user.uhobby }</textarea></p>
      <br />
      <br />
      <div style="width: 100px;margin: 0 auto;">
     	<input type="submit" style="width:100px;display: inline-block;" value="保存">
      </div>
      <br />
    </div>
    <div class="sidebar">
      <div class="sidebar-box">
        <h4>地址</h4>
        <p><input type="text" style="width: 100%;" value="${user.uaddr }" name="uaddr"><br>
          <br>
          <span class="lite1">传真：</span> <input type="tel" value="${user.ufax }" name="ufax"><br>
          <span class="lite1">手机：</span> <input type="tel" value="${user.utel }" name="utel"><br>
          <span class="lite1">邮箱：</span> <input type="email" value="${user.uemail }" name="uemail"></p>
      </div>
      <div class="sidebar-box">
        <h4>我的位置</h4>
        <input type="text" style="width: 100%;margin-bottom: 10px;" value="${user.ulocation }" name="ulocation">
        <iframe width="265" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://f.amap.com/3acra_07E2AXA"></iframe>
      </div>
    </div>
    
  <!-- End Container -->
  </div>
  </form>
  <jsp:include page="/WEB-INF/view/include/copyright.jsp"></jsp:include>
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>