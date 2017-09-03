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
<div class="sidebar">
        <div class="sidebar-box">
          <h4>最新文章</h4>
          <ul class="latest-posts">
            <li><span class="date"><em class="day">22</em><em class="month">Jun</em></span> <a href="#">Vivamus soder pharetra libero atincidunt</a> </li>
            <li><span class="date"><em class="day">14</em><em class="month">May</em></span> <a href="#">Vivamus soder pharetra libero atincidunt</a> </li>
            <li><span class="date"><em class="day">11</em><em class="month">May</em></span> <a href="#">Vivamus soder pharetra libero atincidunt</a> </li>
            <li><span class="date"><em class="day">08</em><em class="month">Apr</em></span> <a href="#">Vivamus soder pharetra libero atincidunt</a> </li>
          </ul>
        </div>
        <div class="sidebar-box">
          <h4>自定义文本</h4>
          <p>Cras vehicula, enim ac rutrum imperdiet, tellus nibh sodales magna, at mollis odio mi a urna. Aliquam augue augue, sodales eu condimentum a, scelerisque eget purus. Sed suscipit mattis molestie.</p>
        </div>
        <div class="sidebar-box">
          <h4>Search</h4>
          <form class="searchform" method="get">
            <input type="text" id="s" name="s" value="type and hit enter" onfocus="this.value=''" onblur="this.value='type and hit enter'"/>
          </form>
        </div>
        <div class="sidebar-box">
          <h4>分类</h4>
          <div class="cat-list">
            <ul>
              <li><a href="#">journal <span>24</span></a></li>
              <li><a href="#">photography <span>12</span></a></li>
              <li><a href="#">design <span>5</span></a></li>
              <li><a href="#">inspiration <span>3</span></a></li>
              <li><a href="#">fun <span>16</span></a></li>
              <li><a href="#">casual <span>5</span></a></li>
              <li><a href="#">business <span>9</span></a></li>
              <li><a href="#">web <span>2</span></a></li>
              <li><a href="#">color <span>1</span></a></li>
              <li><a href="#">portfolio <span>7</span></a></li>
            </ul>
          </div>
        </div>
        <div class="sidebar-box">
          <h4>标签</h4>
          <div class="tag-list">
            <ul>
              <li><a href="#">journal</a></li>
              <li><a href="#">photography</a></li>
              <li><a href="#">design</a></li>
              <li><a href="#">inspiration</a></li>
              <li><a href="#">fun</a></li>
              <li><a href="#">casual</a></li>
              <li><a href="#">business</a></li>
              <li><a href="#">web</a></li>
              <li><a href="#">color</a></li>
              <li><a href="#">portfolio</a></li>
            </ul>
          </div>
        </div>
        <div class="sidebar-box">
          <h4>赞助商</h4>
          <ul class="ads">
            <li><a href="#"><img src="style/images/art/ad1.jpg" alt="" /></a></li>
            <li><a href="#"><img src="style/images/art/ad2.jpg" alt="" /></a></li>
            <li><a href="#"><img src="style/images/art/ad3.jpg" alt="" /></a></li>
            <li><a href="#"><img src="style/images/art/ad4.jpg" alt="" /></a></li>
          </ul>
        </div>
      </div>
</body>
</html>