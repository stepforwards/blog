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
<title>Forward's Blog</title>

<jsp:include page="/WEB-INF/view/include/style.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="style/css/bootstrap.min.css" media="all" />
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
  <jsp:include page="/WEB-INF/view/include/adminHeader.jsp"></jsp:include>
  <!-- End Menu --> 
  <!-- Begin Container -->
  <div id="container" class="opacity"> 
    
    <!-- Begin Blog -->
    <div class="blog-post"> 
      
      <!-- Begin Posts -->
      <div class="full-width"> 
        <form action="<c:url value="/admin/post/newPost.action"/>" method="post">
        <!-- Begin Post -->
        <div class="post"> 
          
          <!-- Begin Post Info -->
          <div class="post-info"> 
            <!-- Begin Date -->
            <div class="post-date"> <span class="day">新</span> <span class="month">建</span> <span class="years">文章</span></div>
            <!-- End Date --> 
            <!-- Begin Title -->
            <div style="width: 500px;display: inline-block;margin-left: 50px;position: relative; top:-20px;">
              <h1><input type="text" name="ptitle" class="form-control" placeholder="文章标题" style="margin: 10px 0;"></h1>
              <div class="post-meta">  
              	<span class="categories" style="margin-right: 20px;">
              		分类：<select name="pcategoriesid">
              				<c:forEach items="${categoriesList }" var="categories">
              					<option value="${categories.cid }">${categories.cname }</option>
              				</c:forEach>
              			</select>
              	</span>
              	<span  style=" display: inline-block;">
              		标签：
              			<c:forEach items="${tagList }" var="tag">
		              		${tag.tname }<input name="tids" value="${tag.tid }"  type="checkbox">&nbsp;
              			</c:forEach>
              	</span>
              </div>
            </div>
            <!-- End Title --> 
          </div>
          <!-- End Post Info -->
          
          <div class="post-text" style="margin: 0 auto;"> <!-- <img style="margin: 0 auto;" src="style/images/art/post1.jpg" alt="" /> --> <br />
          	<textarea id="editor_id1" name="pcontent"></textarea>
	        <input type="submit" class="btn btn-primary" style="margin-left: 45%;margin-top: 10px;" value="保存"/>
          </div>
          <!-- End Text --> 
          </div>
        <!-- End Post -->
        </form>
      </div>
        <div class="hr1"></div>
      <!-- End Posts --> 
     
    </div>
    <!-- End Blog -->
  
</div>
  <div id="copyright" class="opacity">
    <p>© 2017 Forward</p>
  </div>
</div>

<!-- End Wrapper --> 
<script type="text/javascript" src="style/js/scripts.js"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/edtior/kindeditor-all-min.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/edtior/lang/zh-CN.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/edtior/plugins/autoheight/autoheight.js"/>"></script>
<!-- <script charset="utf-8" src="/js/jquery-1.6.2.min.js"></script> -->
<script>
        KindEditor.ready(function(K) {
            // 实例化编辑器1
            editor1 = K.create('#editor_id1',{
            uploadJson : '${pageContext.request.contextPath}/edtior/jsp/upload_json.jsp',
            fileManagerJson : '${pageContext.request.contextPath}/edtior/jsp/file_manager_json.jsp',
            allowFileManager : true,   //否开启【浏览服务器】功能
            items:['source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template', 'code', 'cut', 'copy', 'paste',
                    'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
                    'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
                    'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
                    'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
                    'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 'multiimage',
                    'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
                    'anchor', 'link', 'unlink', '|', 'about'
            ],
            htmlTags: {
                font : ['color', 'size', 'face', '.background-color'],
                span : [
                        '.color', '.background-color', '.font-size', '.font-family', '.background',
                        '.font-weight', '.font-style', '.text-decoration', '.vertical-align', '.line-height'
                ],
                div : [
                        'align', '.border', '.margin', '.padding', '.text-align', '.color',
                        '.background-color', '.font-size', '.font-family', '.font-weight', '.background',
                        '.font-style', '.text-decoration', '.vertical-align', '.margin-left'
                ],
                table: [
                        'border', 'cellspacing', 'cellpadding', 'width', 'height', 'align', 'bordercolor',
                        '.padding', '.margin', '.border', 'bgcolor', '.text-align', '.color', '.background-color',
                        '.font-size', '.font-family', '.font-weight', '.font-style', '.text-decoration', '.background',
                        '.width', '.height', '.border-collapse'
                ],
                'td,th': [
                        'align', 'valign', 'width', 'height', 'colspan', 'rowspan', 'bgcolor',
                        '.text-align', '.color', '.background-color', '.font-size', '.font-family', '.font-weight',
                        '.font-style', '.text-decoration', '.vertical-align', '.background', '.border'
                ],
                a : ['href', 'target', 'name'],
                embed : ['src', 'width', 'height', 'type', 'loop', 'autostart', 'quality', '.width', '.height', 'align', 'allowscriptaccess'],
                img : ['src', 'width', 'height', 'border', 'alt', 'title', 'align', '.width', '.height', '.border'],
                'p,ol,ul,li,blockquote,h1,h2,h3,h4,h5,h6' : [
                        'align', '.text-align', '.color', '.background-color', '.font-size', '.font-family', '.background',
                        '.font-weight', '.font-style', '.text-decoration', '.vertical-align', '.text-indent', '.margin-left','margin'
                ],
                pre : ['class'],
                hr : ['class', '.page-break-after'],
                'br,tbody,tr,strong,b,sub,sup,em,i,u,strike,s,del' : []
        	},
            themeType: 'simple',width: '840px',height: '350px',resizeType: 1,autoHeightMode: true,wellFormatMode: true,
            });
    });
</script>
</body>
</html>