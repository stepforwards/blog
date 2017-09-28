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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
</head>
<body>
 <div id="header">
    <div class="logo"><a href="index.html"><img src="style/images/logo.png" alt="" /></a></div>
    <div class="social">
      <ul>
        <li><a href="#"><img src="style/images/icon-rss.png" alt="RSS" /></a></li>
        <li><a href="#"><img src="style/images/icon-facebook.png" alt="Facebook" /></a></li>
        <li><a href="#"><img src="style/images/icon-twitter.png" alt="Twitter" /></a></li>
        <li><a href="#"><img src="style/images/icon-googleplus.png" alt="Google+" /></a></li>
        <li><a href="#"><img src="style/images/icon-dribble.png" alt="Dribble" /></a></li>
        <li><a href="#"><img src="style/images/icon-flickr.png" alt="Flickr" /></a></li>
        <li><a href="#"><img src="style/images/icon-tumblr.png" alt="Tumblr" /></a></li>
      </ul>
    </div>
  </div>
  <div class="clear"></div>
  <!-- Begin Menu -->
  <div id="menu" class="menu opacity">
    <ul>
      <li><a ${param.fromJsp eq "index" ? "class='active'" : "" } href="<c:url value="/front/home/index.action"/>">主页</a></li>
      <li><a ${param.fromJsp eq "post" ? "class='active'" : "" } href="<c:url value="/front/blog/posts.action"/>">博文</a></li>
      <li><a ${param.fromJsp eq "album" ? "class='active'" : "" } href="<c:url value="/front/album/album.action"/>">多媒体</a></li>
      <li><a ${param.fromJsp eq "comment" ? "class='active'" : "" } href="<c:url value="/front/comment/comment.action"/>">留言版</a></li>
      <li><a ${param.fromJsp eq "about" ? "class='active'" : "" } href="<c:url value="/front/about/about.action"/>">关于</a></li>
    </ul>
    <br style="clear: left" />
  </div>
</body>
</html>