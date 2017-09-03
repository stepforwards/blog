<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
 	<jsp:include page="/WEB-INF/view/include/adminHeader.jsp"></jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity">
    <div class="full-width">
      <h3>Testimonials</h3>
      <div class="quote">
        <blockquote>Donec sed odio dui. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur.</blockquote>
        <span>by <em>John Doe</em></span> </div>
      <div class="quote">
        <blockquote>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis mollis, est non commodo luctus, nisi erat porttitor.</blockquote>
        <span>by <em>John Doe</em></span> </div>
      <div class="quote">
        <blockquote>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</blockquote>
        <span>by <em>John Doe</em></span> </div>
    </div>
    <!-- End Full Width -->
    
  </div>
    <div class="clear"></div>
  <!-- End Container -->
  
  <div id="copyright" class="opacity">
    <p>© 2017 Forward</p>
  </div>
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>