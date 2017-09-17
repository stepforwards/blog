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
<div class="clear"></div>
    <div id="footer">
      <div class="footer-top"></div>
      <!-- Divider -->
      <div class="one-fourth">
        <h3>最新文章</h3>
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
      <div class="one-fourth">
        <h3>相片分享</h3>
        <ul class="flickr">
          <c:forEach items="${albumSharingList }" var="album">
	          <li><a href="/${album.alurl }"><img src="/${album.alurl }" alt="${album.alname }" /></a></li>
          </c:forEach>
         <!--  <li><a href="#"><img src="style/images/art/f2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f6.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f7.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f8.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f9.jpg" alt="" /></a></li> -->
        </ul>
      </div>
      <div class="one-fourth">
        <h3>关于</h3>
        <p>本博客的创建，不是心血来潮，而是。。。。。。</p> <br />
        <p>
        	记录生活
		</p>
      </div>
      <div class="one-fourth last">
        <h3>给我留言</h3>
        <!-- Form -->
        <div class="form-container">
          <form class="forms" id="liuYan" action="<c:url value="/front/comment/doLiuYan.action"/>" method="post">
            <fieldset>
              <ol>
                <li class="form-row text-input-row">
                  <label>名字*</label>
                  <input type="text" name="coname" id="coname" value="" class="text-input required" title="" />
                </li>
                <li class="form-row text-input-row">
                  <label>邮箱*</label>
                  <input type="email" name="coemail" id="coemail" value="" class="text-input required email" title="" />
                </li>
                <li class="form-row text-area-row">
                  <textarea name="cocontent" id="cocontent" class="text-area required"></textarea>
                </li>
                <li class="form-row hidden-row">
                  <input type="hidden" name="hidden" value="" />
                </li>
                <li class="button-row">
                  <input type="button" value="提交" onclick="checkLiuYan()" name="submit" class="btn-submit" />
                </li>
              </ol>
              <input type="hidden" name="v_error" id="v-error" value="Required" />
              <input type="hidden" name="v_email" id="v-email" value="Enter a valid email" />
            </fieldset>
          </form>
          <div class="response"></div>
        </div>
        <!-- End Form --> 
      </div>
      <div class="clear"></div>
    </div>
 
  <!-- End Container -->
  
  

<!-- End Wrapper --> 

</body>
<script type="text/javascript">
	function checkLiuYan() {
		if($("#coname").val() == "" || $("#coemail").val() == "" || $("#cocontent").val() == ""){
			alert("姓名，邮箱，内容均不能为空！")
		}else{
			$("#liuYan").submit();
		}
	}
</script>
</html>