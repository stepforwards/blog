<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="page" uri="http://forward.com/common/" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html lang="en-ZH">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
  		<jsp:param value="post" name="fromJsp"/>
  </jsp:include>
  <!-- End Menu -->  
  
  <!-- Begin Container -->
  <div id="container" class="opacity"> 
    
    <!-- Begin Blog -->
    <div class="blog"> 
      
      <!-- Begin Posts -->
      <div class="content"> 
        <c:forEach items="${pages.rows }" var="post" varStatus="status">
        
	        <!-- Begin Post -->
	        <div class="post"> 
	          
	          <!-- Begin Post Info -->
	          <div class="post-info"> 
	            <!-- Begin Date -->
	            <div class="post-date"> 
	            	<span class="day"><fmt:formatDate value="${post.pinserttime }" type="both" pattern="dd"/></span> 
	            	<span class="month"><fmt:formatDate value="${post.pinserttime }" type="both" pattern="MM"/></span> 
	            	<span class="year"><fmt:formatDate value="${post.pinserttime }" type="both" pattern="yyyy"/></span> 
	            </div>
	            <!-- End Date --> 
	            <!-- Begin Title -->
	            <div class="post-title">
	              <h1><a href="<c:url value="/front/blog/post.action"/>?pid=${post.pid}">${post.ptitle }</a></h1>
	              <div class="post-meta"> <span class="comments"><a href="#">13 Comments</a></span> <span class="categories"><a href="#">${post.categoriesname }</a>, <a href="#">Photography</a></span> </div>
	            </div>
	            <!-- End Title --> 
	          </div>
	          <!-- End Post Info -->
	          
	          <div class="post-text"> 
	          	<!-- <iframe src="http://player.vimeo.com/video/24573328?title=0&amp;byline=0&amp;portrait=0" width="595" height="335" frameborder="0"></iframe> <br /> -->
	          	<%-- <a href="<c:url value="/front/blog/post.action"/>?pid=${post.pid}"><img src="<c:url value="/style/images/art/post1.jpg"/>" alt="" /></a>   <br />--%>
	            	
	            	<c:choose>
               			 <c:when test="${fn:length(post.pcontent) > 1000 }">
	               			 ${fn:substring(post.pcontent,0,fn:indexOf(post.pcontent, "<br />")) } ${"</span>" }
               			 </c:when>
						 <c:otherwise>
						 	${post.pcontent }
						 </c:otherwise>	                	
                	</c:choose>
	            	<a class="more" href="<c:url value="/front/blog/post.action"/>?pid=${post.pid}">阅读更多 →</a>
	            	
	          </div>
	          <!-- End Text --> 
	          <span class="tags">
	          	 <c:forEach items="${post.tagList }" var="tag">
		          			${tag.tname }&nbsp;
		          </c:forEach>
	          </span>
	        </div>
	        <!-- End Post --> 
        </c:forEach>
        
        <!-- Begin Page Navi -->
    			<page:page url="${pageContext.request.contextPath }/front/blog/posts.action"></page:page>
        <!-- End Page Navi -->
        
      </div>
      <!-- End Posts --> 
      
      <!-- Begin Sidebar -->
      <jsp:include page="/WEB-INF/view/include/sidebar.jsp"></jsp:include>
      <!-- End Sidebar --> 
    </div>
    <!-- End Blog -->
    <jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
    
  </div>
  <!-- End Container -->
  <jsp:include page="/WEB-INF/view/include/copyright.jsp"></jsp:include>
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>