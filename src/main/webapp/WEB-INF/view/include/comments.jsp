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
<h3>有话要说么？</h3>
<div id="comments">
          <ol id="singlecomments" class="commentlist">
          <c:forEach items="${commentList }" var="comment" varStatus="status">
	           <li class= "clearfix">
	              <div class="user"><img alt="" src="style/images/art/a${status.count % 6 }.jpg" height="60" width="60" class="avatar" /></div>
	              <div class="message">
	                <div class="info">
	                  <h3>
	                  	<c:choose>
	                  		<c:when test="${comment.coreplyid == 0 }">
			                  	<a>${comment.coname }评论:</a>
	                  		</c:when>
	                  		<c:otherwise>
	                  			<a>${comment.coname }&nbsp;&nbsp;回复&nbsp;&nbsp;${comment.coreplyname }</a>
	                  		</c:otherwise>
	                  	</c:choose>
	                  	
	                  </h3>
	                  <span class="date">${comment.coinserttime }</span> 
	                  <a class="reply-link" onclick="setCoReplyId(${comment.coid})" href='<c:url value="/front/blog/post.action"/>?pid=${post.pid}#comments'>回复&nbsp;${commentListSize - status.index }楼</a> 
	                 </div>
	                <p>${comment.cocontent }</p>
	              </div>
	              <div class="clear"></div>
	            </li>
          </c:forEach>
          </ol>
        </div>
        <!-- End Comments --> 
        
        <!-- Begin Form -->
        <div class="comment-form">
          <h3  name="comments">评论</h3>
          <div class="form-container">
            <form class="forms cform" action="<c:url value="/front/comment/doComment.action"/>" method="post">
              <fieldset>
                <ol>
                  <li class="form-row text-input-row">
                    <label>姓名</label>
                    <input type="text" name="coname" value="" class="text-input required" title="" />
                  </li>
                  <li class="form-row text-input-row">
                    <label>邮箱</label>
                    <input type="email" name="coemail" value="" class="text-input required email" title="" />
                  </li>
                  <li class="form-row text-area-row">
                    <label>信息</label>
                    <textarea name="cocontent" class="text-area required"></textarea>
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
                <input type="hidden" name="copostid" value="${post.pid }">
                <input type="hidden" id="coreplyid" name="coreplyid" value="0">
              </fieldset>
            </form>
           
            <div class="response"></div>
          </div>
        </div>
        <!-- End Form --> 
</body>
<script type="text/javascript">
	function setCoReplyId(coreplyid) {
		$("#coreplyid").val(coreplyid);
	}
</script>
</html>