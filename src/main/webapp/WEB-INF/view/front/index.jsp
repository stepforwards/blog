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
<script type="text/javascript">

$(document).ready(function()
{
	$("#showcase").awShowcase(
	{
		content_width:			900,
		content_height:			400,
		auto:					true,
		interval:				3000,
		continuous:				false,
		arrows:					true,
		buttons:				true,
		btn_numbers:			true,
		keybord_keys:			true,
		mousetrace:				false, /* Trace x and y coordinates for the mouse */
		pauseonover:			true,
		stoponclick:			false,
		transition:				'fade', /* hslide/vslide/fade */
		transition_delay:		0,
		transition_speed:		500,
		show_caption:			'onload' /* onload/onhover/show */
	});
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
  		<jsp:param value="index" name="fromJsp"/>
  </jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity"> 
    
    <!-- Begin Showcase -->
    <div id="showcase" class="showcase"> 
      <c:forEach items="${albumSharingList }" var="album">
	      <!-- Each child div in #showcase represents a slide -->
	      <div class="showcase-slide"> 
	        <!-- Put the slide content in a div with the class .showcase-content. -->
	        <div class="showcase-content"> <img src="/${album.alurl }" alt="${album.alname }" style="width: 100%;height: auto;" /> </div>
	        <div class="showcase-caption">
					${album.aldesc }
			</div>
	      </div>
      </c:forEach>
      
      <!-- <div class="showcase-slide"> 
        Put the slide content in a div with the class .showcase-content.
        <div class="showcase-content"> <iframe src="http://cn.bing.com/?mkt=zh-CN" style="width: 100%;" width="900" height="400" frameborder="0"></iframe> </div>
      </div> -->
      
     
   		<!-- Each child div in #showcase represents a slide -->
         <!-- <div class="showcase-slide"> 
      			  Put the slide content in a div with the class .showcase-content.
       				<div class="showcase-content"> <img src="style/images/art/s4.jpg" alt="4" /> </div>
         			<div class="showcase-caption">生活是如此的美好！</div>
      		  </div> 
      	 -->
    </div>
    <!-- End Showcase -->
    
    <div class="intro">
    	做不了决定的时候，让时间帮你决定。如果还是无法决定，做了再说，宁愿犯错，不留遗憾。
    </div>
    <div class="hr2"></div>
    <!-- Divider --> 
    
    <!-- Begin Top Columns -->
    <h2>爱好</h2>
    <div class="two-third">
      <p>${uhobby }</p>
    </div>
    <div class="one-third last">
      <ul>
        <li>vivamus大非乱数假文。</li>
        <li>etiam pharetra Pretium爱神。</li>
        <li>curabitur porttitorNEC麦格纳。</li>
        <li>米西奈斯的学位。</li>
      </ul>
    </div>
    <!-- End Top Columns -->
    
    <div class="clear"></div>
    <br />
    <br />
    <br />
    
    <!-- Begin 4 Columns -->
    
    <div class="one-fourth"> <img src="style/images/icon1.png" alt="" class="center" /><br />
      <h4 class="center">网页设计</h4>
      <p class="center">前台的真的挺有意思</p>
    </div>
    <div class="one-fourth"> <img src="style/images/icon2.png" alt="" class="center" /><br />
      <h4 class="center">摄影，摄影术</h4>
      <p class="center">喜欢摄影，生活中的艺术</p>
    </div>
    <div class="one-fourth"> <img src="style/images/icon3.png" alt="" class="center" /><br />
      <h4 class="center">运动图形</h4>
      <p class="center">活着，就是运动</p>
    </div>
    <div class="one-fourth last"> <img src="style/images/icon4.png" alt="" class="center" /><br />
      <h4 class="center">优美文章</h4>
      <p class="center">分享恬静时光</p>
    </div>
    <div class="clear"></div>
    <div class="hr1"></div>
    <!-- Divider --> 
    
    <!-- Begin Latest Works -->
    <h2>优秀文章</h2>
    <div class="carousel">
      <div id="carousel-scroll"><a href="#" id="prev">上一页</a><a href="#" id="next">下一页</a></div>
      <ul>
      	<c:forEach items="${finePostList }" var="finePost" varStatus="status">
	        <li> 
	        	<a href="<c:url value="/front/blog/post.action"/>?pid=${finePost.pid}"> 
	        		<span class="overlay details">${finePost.ptitle }</span>
	        		<c:choose>
	        			<c:when test="${finePost.palbumurl eq null }">
	        				<img src="style/images/art/c${status.count % 7 }.jpg" alt="" /> 
	        			</c:when>
	        			<c:otherwise>
		        			<img src="/${finePost.palbumurl }" style="width: 164px;height: 130px;" alt="" /> 
	        			</c:otherwise>
	        		</c:choose>
	        	</a> 
	        </li>
      	</c:forEach>
      </ul>
    </div>
    <!-- End Latest Works -->
    
    <jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
  </div>
  <!-- End Container -->
  <jsp:include page="/WEB-INF/view/include/copyright.jsp"></jsp:include>
  
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>