<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<base href="<%=basePath%>">
</head>
<body>
<div class="sidebar">
        <div class="sidebar-box">
          <h4>最新文章</h4>
          <ul class="latest-posts">
          	<c:forEach items="${latestPostList }" var="latestPost">
	            <li style="margin-bottom: 20px;">
	            	<span class="date" >
	            		<em class="day"><fmt:formatDate value="${latestPost.pinserttime }" type="both" pattern="dd"/></em>
	            		<em class="month"><fmt:formatDate value="${latestPost.pinserttime }" type="both" pattern="MM"/></em>
	            	</span> 
	            	<a href="<c:url value="/front/blog/post.action"/>?pid=${latestPost.pid}">${latestPost.ptitle }</a> 
	            </li>
          	</c:forEach>
          </ul>
        </div>
        <div class="sidebar-box">
          <h4>自定义文本</h4>
          <p>Cras vehicula, enim ac rutrum imperdiet, tellus nibh sodales magna, at mollis odio mi a urna. Aliquam augue augue, sodales eu condimentum a, scelerisque eget purus. Sed suscipit mattis molestie.</p>
        </div>
        <div class="sidebar-box">
        <form class="searchform" action="<c:url value="/front/blog/posts.action"/>" method="post">
          <h4>Search</h4>
            <input type="text" id="s" name="ptitle" value="${ptitle }" placeholder="请输入文章标题" onblur="searchform()"/>
        </form>
        </div>
        <div class="sidebar-box">
          <h4>分类</h4>
          <div class="cat-list">
            <ul>
              <c:forEach items="${categoriesList }" var="categories">
	              <li><a href="<c:url value="/front/blog/posts.action"/>?pcategoriesid=${categories.cid}">${categories.cname}<!-- <span>24</span> --></a></li>
              </c:forEach>
           </ul>
          </div>
        </div>
        <div class="sidebar-box">
          <h4>标签</h4>
          <div class="tag-list">
            <ul>
              <c:forEach items="${tagList }" var="tag">
	              <li><a href="<c:url value="/front/blog/posts.action"/>?tid=${tag.tid}">${tag.tname }</a></li>
              </c:forEach>
            </ul>
          </div>
        </div>
       
        <div class="sidebar-box">
          <h4>赞助商</h4>
          <ul class="ads">
            <li><a href="#"><img src="style/images/art/ad1.jpg" alt="" /></a></li>
            <li><a href="#"><img src="style/images/art/ad2.jpg" alt="" /></a></li>
            <li><a href="#"><img src="style/images/art/ad3.jpg" alt="" /></a></li>
            <li><a href="#"><img src="style/images/art/ad4.jpg" alt="" /></a></li>
          </ul>
        </div>
      </div>
</body>
<script type="text/javascript">
	function searchform(){
		$(".searchform").submit();
	}
	
</script>
</html>