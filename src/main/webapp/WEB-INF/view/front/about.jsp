<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html lang="en-ZH">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<meta charset="UTF-8">
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
  <a href="style/images/art/bg2.jpg">1</a> 
  <a href="style/images/art/bg3.jpg">1</a> 
  <a href="style/images/art/bg4.jpg">1</a> 
  <a href="style/images/art/bg5.jpg">1</a> 
  <a href="style/images/art/bg6.jpg">1</a> 
</div>
<div id="superbgimage">
  <div class="scanlines"></div>
</div>
<!-- End Fullscreen backgrounds --> 
<!-- Begin Wrapper -->
<div id="wrapper">
  
  <!-- Begin Menu -->
 	<jsp:include page="/WEB-INF/view/include/header.jsp"></jsp:include>
  <!-- End Menu --> 
  
  <!-- Begin Container -->
  <div id="container" class="opacity">
    <div class="content">
      <h2>关于我</h2>
      <p>Cras vehicula, enim ac rutrum imperdiet, tellus nibh sodales magna, at mollis odio mi a urna. Aliquam augue augue, sodales eu condimentum a, scelerisque eget purus. Sed suscipit mattis.</p>
      <br />
      <br />
      <br />
      <div class="form-container">
        <form class="forms" action="contact/form-handler.php" method="post">
          <fieldset>
            <ol>
              <li class="form-row text-input-row">
                <label>姓名*</label>
                <input type="text" name="name" value="" class="text-input required" title="" />
              </li>
              <li class="form-row text-input-row">
                <label>邮箱*</label>
                <input type="text" name="email" value="" class="text-input required email" title="" />
              </li>
              <li class="form-row text-area-row">
                <label>信息*</label>
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
      <br />
    </div>
    <div class="sidebar">
      <div class="sidebar-box">
        <h4>地址</h4>
        <p>Lorem Ipsum Dolor Sit
          Moon Avenue No:11/21
          Planet City, Earth<br>
          <br>
          <span class="lite1">Fax:</span> +555 797 534 01<br>
          <span class="lite1">Tel:</span> +555 636 646 62<br>
          <span class="lite1">E-mail:</span> name@domain.com</p>
      </div>
      <div class="sidebar-box">
        <h4>我的位置</h4>
        <iframe width="265" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://f.amap.com/3acra_07E2AXA"></iframe>
      </div>
    </div>
    
  <!-- End Container -->
  <jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
  </div>
  <jsp:include page="/WEB-INF/view/include/copyright.jsp"></jsp:include>
</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>