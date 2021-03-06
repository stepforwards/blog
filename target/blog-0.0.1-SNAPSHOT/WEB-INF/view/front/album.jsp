<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="page" uri="http://forward.com/common/" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
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
<script type="text/javascript">
$(document).ready(function() {
	
      var 
        speed = 1000,   // animation speed
        $wall = $('#portfolio .items'),

        masonryOptions = {         // initial masonry options

          itemSelector: '.box:not(.invis)',
          animate: true,
          animationOptions: {
            duration: speed,
            queue: false
          }
        };
		
		$wall.imagesLoaded(function(){
			
			$wall.masonry(masonryOptions);
			
			// Create array of filters from link href
			var arrFilter = [];
			$('#filtering-nav a').each(function(){
				fhash = $(this).attr('href').replace('#','');
				if(fhash != 'all'){
					arrFilter.push(fhash);
				}
			});
			
			//  Get the parameter value after the # symbol
			var url=document.URL.split('#')[1];
			if(url == undefined){
				url = 'all';
			}
			$('#filtering-nav a.'+url).parent().addClass('active');
			
			if(jQuery.inArray(url, arrFilter) > '-1'){
				// set masonry options animate to false
				masonryOptions.animate = false;
				// hide boxes that don't match the filter class
				$wall.children().not('.'+url).toggleClass('invis').hide();
			}
		//	imageSetCss($(".box"));
			// run masonry again
			$wall.masonry(masonryOptions);
		//	imageFadeIn($(".box"));
		$wall.animate({opacity: 1},1000);
			
		});
		
		$('#filtering-nav a').click(function(e){
			var color = $(this).attr('class');
			filterClass = '.' + color;
			$('#filtering-nav li').removeClass('active');
			$(this).parent().addClass('active');
			
			if(filterClass=='.all') {
			  // show all hidden boxes
			  $wall.children('.invis').toggleClass('invis').fadeIn(speed);
			} else {
			  // hide visible boxes 
			  $wall.children().not(filterClass).not('.invis').toggleClass('invis').fadeOut(speed);
			  // show hidden boxes
			  $wall.children(filterClass+'.invis').toggleClass('invis').fadeIn(speed);
			}
			$wall.masonry({animate: true});
			// set hash in URL
			location.hash = color;
			e.preventDefault();
		});
});
$.fn.imagesLoaded = function(a) {
	var 
	b=this.find("img"),
	c=[],
	d=this,
	e=b.length;
	
	if(!b.length){
		a.call(this);
		return this
	}
	b.one("load error",function(){
		--e===0&&(e=b.length,b.one("load error",function(){
			--e===0&&a.call(d)}).each(function(){
				this.src=c.shift()
			})
		)}
	).each(function(){
		c.push(this.src),this.src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw=="
	});
	return this
};
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
  		<jsp:param value="album" name="fromJsp"/>
  </jsp:include>
  <!-- End Menu -->  
  
  <!-- Begin Container -->
  <div id="container" class="opacity">
    <h2>时光记录</h2>
    <p>
    	年难留，时易损。
    	让人回味，让人无奈。
    	人寿几何?逝如朝霞。
    	时无重至，华不在阳。
    	忘记今天的人将被明天忘记。
    	不要为已消逝之年华叹息，须正视欲匆匆溜走的时光。
    </p>
    
    <!-- Begin Portfolio -->
      <div id="portfolio">
        <ul id="filtering-nav">
          <li>Filter:</li>
          <li><a class="all" href="#all">所有</a></li>
          <li><a class="cat1" href="#cat1">图片</a></li>
         <!--  <li><a class="cat2" href="#cat2">文章</a></li> -->
          <li><a class="cat3" href="#cat3">视频</a></li>
        </ul>
        <div style="margin-top: 35px;">
	        <page:page url="${pageContext.request.contextPath }/front/album/album.action"></page:page>
        </div>
        <div class="clear"></div>
        <div class="items" style="margin-top: 5px;">
        	<c:forEach items="${pages.rows }" var="album">
	          <div class="box col5 cat1">
	          	<a href="/${album.alurl }" rel="prettyPhoto" title="${album.aldesc }">
	          	<span class="overlay zoom"></span>
	          	<img src="/${album.alurl }" style="display: inline-block; width: 196px;height: auto;" alt="${album.alname }" /></a>
	          </div>
        	</c:forEach>
        	<c:forEach items="${videoList }" var="video">
			  <div class="box col5 cat3">
			  	<a href="${video.vurl }" rel="prettyPhoto" title="${video.vname }">
			  		<span class="overlay play"></span>
			  		<c:choose>
			  			<c:when test="${video.valbumurl eq '' }">
					  		<img src="style/images/art/p14.jpg" alt="" />
			  			</c:when>
			  			<c:otherwise>
					  		<img src="/${video.valbumurl }" alt="" />
			  			</c:otherwise>
			  		</c:choose>
			  	</a>
			  </div> 
        	</c:forEach>
          <!-- 
          <div class="box col5 cat2"><a href="portfolio-post.html"><span class="overlay details"></span><img src="style/images/art/p2.jpg" alt="" /></a></div>
          <div class="box col5 cat1"><a href="style/images/art/p3.jpg" rel="prettyPhoto" title="this is title"><span class="overlay zoom"></span><img src="style/images/art/p3.jpg" alt="" /></a></div>
          <div class="box col5 cat2"><a href="style/images/art/p4.jpg" rel="prettyPhoto" title="this is title"><span class="overlay zoom"></span><img src="style/images/art/p4.jpg" alt="" /></a></div>
          <div class="box col5 cat1"><a href="portfolio-post.html"><span class="overlay details"></span><img src="style/images/art/p5.jpg" alt="" /></a></div>
          <div class="box col5 cat2"><a href="style/images/art/p6.jpg" rel="prettyPhoto" title="this is title"><span class="overlay zoom"></span><img src="style/images/art/p6.jpg" alt="" /></a></div>
          <div class="box col5 cat1"><a href="style/images/art/p7.jpg" rel="prettyPhoto" title="this is title"><span class="overlay zoom"></span><img src="style/images/art/p7.jpg" alt="" /></a></div>
          <div class="box col5 cat2"><a href="portfolio-post.html"><span class="overlay details"></span><img src="style/images/art/p8.jpg" alt="" /></a></div>
          <div class="box col5 cat2"><a href="style/images/art/p9.jpg" rel="prettyPhoto" title="this is title"><span class="overlay zoom"></span><img src="style/images/art/p9.jpg" alt="" /></a></div>
          <div class="box col5 cat1"><a href="style/images/art/p10.jpg" rel="prettyPhoto" title="this is title"><span class="overlay zoom"></span><img src="style/images/art/p10.jpg" alt="" /></a></div>
          <div class="box col5 cat2"><a href="portfolio-post.html"><span class="overlay details"></span><img src="style/images/art/p11.jpg" alt="" /></a></div>
          <div class="box col5 cat1"><a href="style/images/art/p12.jpg" rel="prettyPhoto" title="this is title"><span class="overlay zoom"></span><img src="style/images/art/p12.jpg" alt="" /></a></div>
		  <div class="box col5 cat3"><a href="http://vimeo.com/25518056" rel="prettyPhoto" title="this is title"><span class="overlay play"></span><img src="style/images/art/p13.jpg" alt="" /></a></div>
		  -->
        </div>
        <!-- .wrap --> 
    </div>
    <!-- End Portfolio -->
    
    <jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
  </div>
  <!-- End Container -->
  <jsp:include page="/WEB-INF/view/include/copyright.jsp"></jsp:include>
</div>
<!-- End Wrapper --> 



<script type="text/javascript" src="style/js/scripts.js"></script>

</body>
</html>