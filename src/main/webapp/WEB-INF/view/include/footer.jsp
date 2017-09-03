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
          <li><span class="date"><em class="day">22</em><em class="month">6</em></span> <a href="#">什么是大数据</a> </li>
          <li><span class="date"><em class="day">14</em><em class="month">5</em></span> <a href="#">AI设计</a> </li>
          <li><span class="date"><em class="day">11</em><em class="month">5</em></span> <a href="#">时光的未来</a> </li>
          <li><span class="date"><em class="day">08</em><em class="month">4</em></span> <a href="#">优秀的程序员</a> </li>
        </ul>
      </div>
      <div class="one-fourth">
        <h3>相片分享</h3>
        <ul class="flickr">
          <li><a href="#"><img src="style/images/art/f1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f6.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f7.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f8.jpg" alt="" /></a></li>
          <li><a href="#"><img src="style/images/art/f9.jpg" alt="" /></a></li>
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
        <h3>联系我</h3>
        <!-- Form -->
        <div class="form-container">
          <form class="forms" action="contact/form-handler.php" method="post">
            <fieldset>
              <ol>
                <li class="form-row text-input-row">
                  <label>名字*</label>
                  <input type="text" name="name" value="" class="text-input required" title="" />
                </li>
                <li class="form-row text-input-row">
                  <label>邮箱*</label>
                  <input type="text" name="email" value="" class="text-input required email" title="" />
                </li>
                <li class="form-row text-area-row">
                  <textarea name="message" class="text-area required"></textarea>
                </li>
                <li class="form-row hidden-row">
                  <input type="hidden" name="hidden" value="" />
                </li>
                <li class="button-row">
                  <input type="submit" value="提交" name="submit" class="btn-submit" />
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
</html>