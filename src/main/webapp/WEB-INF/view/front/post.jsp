<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	$('.forms:not(.cform)').dcSlickForms();
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
    <div class="blog-post"> 
      
      <!-- Begin Posts -->
      <div class="content"> 
        
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
              <h1>${post.ptitle }</h1>
              <div class="post-meta"> <span class="comments"><a href="#">13 Comments</a></span> <span class="categories"><a href="#">${post.categoriesname }</a></span> </div>
            </div>
            <!-- End Title --> 
          </div>
          <!-- End Post Info -->
          
          <div class="post-text"> <!-- <img src="style/images/art/post1.jpg" alt="" /> <br /> -->
           		${post.pcontent }
          </div>
          <!-- End Text --> 
          <span class="tags"><a href="#">Black & White</a>, <a href="#">Color</a>, <a href="#">Portfolio</a></span> </div>
        <!-- End Post -->
        
        <div class="hr2"></div>
        
        <!-- Begin Comments -->
        
        <h3>5 Responses to "Proin euismod dui rutrum risus"</h3>
        
        <!-- Begin Comments -->
        <jsp:include page="/WEB-INF/view/include/comments.jsp"></jsp:include>
        <!-- End Comments --> 
        
      </div>
      <!-- End Posts --> 
      
      <!-- Begin Sidebar -->
      <jsp:include page="/WEB-INF/view/include/sidebar.jsp"></jsp:include>
      <!-- End Sidebar --> 
    </div>
    <!-- End Blog -->
     <jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
    </div>
     <jsp:include page="/WEB-INF/view/include/copyright.jsp"></jsp:include>
  </div>

</body>
</html>