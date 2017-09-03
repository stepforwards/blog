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
    <div class="logo opacity"><a href="index.html"><img src="style/images/logo.png" alt="" /></a></div>
  </div>
  <div class="clear"></div>
  <!-- Begin Menu -->
  <div id="menu" class="menu opacity">
    <ul>
      <li><a href="<c:url value="/admin/post/postList.action"/>">博文管理</a>
      	<ul>
      	  <li><a href="<c:url value="/admin/post/postList.action"/>">已发布</a></li>
      	  <li><a href="<c:url value="/admin/post/draftsPostList.action"/>?drafts=1">未发布</a></li>
        </ul>
      </li>
      <li><a href="<c:url value="/admin/categories/categoriesList.action"/>">分类管理</a></li>
      <li><a href="<c:url value="/admin/tag/tagList.action"/>">标签管理</a></li>
      <li><a href="<c:url value="/admin/album/album.action"/>"  class="active">多媒体管理</a>
      	<ul>
      	  <li><a href="<c:url value="/admin/album/album.action"/>">相册管理</a></li>
      	  <li><a href="<c:url value="/admin/album/video.action"/>">视频管理</a></li>
        </ul>
      </li>
      <li><a href="<c:url value="/admin/comment/commentList.action"/>">留言管理</a></li>
      <li><a href="<c:url value="/admin/about/about.action"/>">关于信息</a></li>
      <li><a href="<c:url value="/admin/user/exit.action"/>">退出</a></li>
    </ul>
    <br style="clear: left" />
  </div>
  <!-- End Menu --> 
</body>
</html>