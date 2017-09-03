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
<div id="comments">
          <ol id="singlecomments" class="commentlist">
            <li class= "clearfix">
              <div class="user"><img alt="" src="style/images/art/a1.jpg" height="60" width="60" class="avatar" /></div>
              <div class="message">
                <div class="info">
                  <h3><a href="#">Jacqueline</a></h3>
                  <span class="date">April 4, 2010</span> <a class="reply-link" href="#">Reply</a> </div>
                <p>Quisque tristique tincidunt metus non aliquam. Quisque ac risus sit amet quam sollicitudin vestibulum vitae malesuada libero. Mauris magna elit, suscipit non ornare et, blandit a tellus. Pellentesque dignissim ornare elit, quis mattis eros sodales ac.</p>
              </div>
              <div class="clear"></div>
              <ul class="children">
                <li class= "clearfix">
                  <div class="user"><img alt="" src="style/images/art/a2.jpg" height="60" width="60" class="avatar" /></div>
                  <div class="message">
                    <div class="info">
                      <h3><a href="#">Mathieu</a></h3>
                      <span class="date">April 4, 2010</span> <a class="reply-link" href="#">Reply</a> </div>
                    <p>Quisque tristique tincidunt metus non aliquam. Quisque ac risus sit amet quam sollicitudin vestibulum vitae malesuada libero. Mauris magna elit, suscipit non ornare et, blandit a tellus. Pellentesque dignissim ornare elit, quis mattis eros sodales ac.</p>
                  </div>
                  <div class="clear"></div>
                  <ul class="children">
                    <li class= "clearfix">
                      <div class="user"><img alt="" src="style/images/art/a3.jpg" height="60" width="60" class="avatar" /></div>
                      <div class="message">
                        <div class="info">
                          <h3><a href="#">Charlene</a></h3>
                          <span class="date">April 4, 2010</span> <a class="reply-link" href="#">Reply</a> </div>
                        <p>Quisque tristique tincidunt metus non aliquam. Quisque ac risus sit amet quam sollicitudin vestibulum vitae malesuada libero. Mauris magna elit, suscipit non ornare et, blandit a tellus. Pellentesque dignissim ornare elit, quis mattis eros.</p>
                      </div>
                      <div class="clear"></div>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class= "clearfix">
              <div class="user"><img alt="" src="style/images/art/a4.jpg" height="60" width="60" class="avatar" /></div>
              <div class="message">
                <div class="info">
                  <h3><a href="#">Isabel</a></h3>
                  <span class="date">April 4, 2010</span> <a class="reply-link" href="#">Reply</a> </div>
                <p>Quisque tristique tincidunt metus non aliquam. Quisque ac risus sit amet quam sollicitudin vestibulum vitae malesuada libero. Mauris magna elit, suscipit non ornare et, blandit a tellus. Pellentesque dignissim ornare elit, quis mattis eros sodales ac.</p>
              </div>
              <div class="clear"></div>
            </li>
            <li class= "clearfix">
              <div class="user"><img alt="" src="style/images/art/a5.jpg" height="60" width="60" class="avatar" /></div>
              <div class="message">
                <div class="info">
                  <h3><a href="#">Isabel</a></h3>
                  <span class="date">April 4, 2010</span> <a class="reply-link" href="#">Reply</a> </div>
                <p>Quisque tristique tincidunt metus non aliquam. Quisque ac risus sit amet quam sollicitudin vestibulum vitae malesuada libero. Mauris magna elit, suscipit non ornare et, blandit a tellus. Pellentesque dignissim ornare elit, quis mattis eros sodales ac.</p>
              </div>
              <div class="clear"></div>
            </li>
          </ol>
        </div>
        <!-- End Comments --> 
        
        <!-- Begin Form -->
        <div class="comment-form">
          <h3>评论</h3>
          <div class="form-container">
            <form class="forms cform" action="#" method="post">
              <fieldset>
                <ol>
                  <li class="form-row text-input-row">
                    <label>姓名</label>
                    <input type="text" name="name" value="" class="text-input required" title="" />
                  </li>
                  <li class="form-row text-input-row">
                    <label>邮箱</label>
                    <input type="text" name="email" value="" class="text-input required email" title="" />
                  </li>
                  <li class="form-row text-area-row">
                    <label>信息</label>
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
        </div>
        <!-- End Form --> 
        
</body>
</html>