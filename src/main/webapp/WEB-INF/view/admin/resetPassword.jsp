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
<title>重置密码</title>

<link rel="stylesheet" type="text/css" href="style/login_files/style.css">
<link rel="stylesheet" type="text/css" href="style/login_files/animate.css">

<script type="text/javascript" src="style/login_files/login.js"></script>
<script type="text/javascript" src="style/login_files/jquery.js"></script>	  
	  
<style id="style-1-cropbar-clipper">
.en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255,255,255,.38) solid !important;
    border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
}
</style></head>
 
<body>
	
<canvas id="christmasCanvas" style="top: 0px; left: 0px; z-index: 5000; position: fixed; pointer-events: none;" width="1920" height="945"></canvas>

<script type="text/javascript">
	 var snow = function() {
    if(1==1) {
      $("body").append('<canvas id="christmasCanvas" style="top: 0px; left: 0px; z-index: 5000; position: fixed; pointer-events: none;"></canvas>');
      var b = document.getElementById("christmasCanvas"), a = b.getContext("2d"), d = window.innerWidth, c = window.innerHeight;
      b.width = d;
      b.height = c;
      for(var e = [], b = 0;b < 70;b++) {
        e.push({x:Math.random() * d, y:Math.random() * c, r:Math.random() * 4 + 1, d:Math.random() * 70})
      }
      var h = 0;
      window.intervral4Christmas = setInterval(function() {
        a.clearRect(0, 0, d, c);
        a.fillStyle = "rgba(255, 255, 255, 0.6)";
        a.shadowBlur = 5;
        a.shadowColor = "rgba(255, 255, 255, 0.9)";
        a.beginPath();
        for(var b = 0;b < 70;b++) {
          var f = e[b];
          a.moveTo(f.x, f.y);
          a.arc(f.x, f.y, f.r, 0, Math.PI * 2, !0)
        }
        a.fill();
        h += 0.01;
        for(b = 0;b < 70;b++) {
          if(f = e[b], f.y += Math.cos(h + f.d) + 1 + f.r / 2, f.x += Math.sin(h) * 2, f.x > d + 5 || f.x < -5 || f.y > c) {
            e[b] = b % 3 > 0 ? {x:Math.random() * d, y:-10, r:f.r, d:f.d} : Math.sin(h) > 0 ? {x:-5, y:Math.random() * c, r:f.r, d:f.d} : {x:d + 5, y:Math.random() * c, r:f.r, d:f.d}
          }
        }
      }, 70)
    }
  }
  snow();
</script><canvas id="christmasCanvas" style="top: 0px; left: 0px; z-index: 5000; position: fixed; pointer-events: none;"></canvas>

<h2 align="center">重置密码</h2>

<div class="login_frame"></div>

<div class="LoginWindow">
	<div>
		<form action="<c:url value="/admin/user/resetPassword.action"/>" method="post">
		<div class="login">
					<input type="hidden" name="uemail" value="${user.u_email }">
					<input type="hidden" name="ucaptcha" value="${user.u_captcha }">
				<p><input id="password" name="upassword" placeholder="新密码" type="password"></p>
				<p><input id="finalPWD" name="urpassword" placeholder="确认密码" type="password"></p>
				<span style="color:red;">${message }</span>
			<p class="login-submit"><button type="submit" class="login-button" id="submit">提交</button></p>
		</div>
		</form>
	</div>
</div>
	
<div id="timeArea"><script type="text/javascript">LoadBlogParts();</script><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" id="honehoneclock" height="70" width="160" align="middle"><param name="allowScriptAccess" value="always"><param name="movie" value="http://chabudai.sakura.ne.jp/blogparts/honehoneclock/honehone_clock_tr.swf"><param name="quality" value="high"><param name="bgcolor" value="#ffffff"><param name="wmode" value="transparent"><embed wmode="transparent" src="login_files/honehone_clock_tr.swf" quality="high" bgcolor="#ffffff" name="honehoneclock" allowscriptaccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" height="70" width="160" align="middle"></object></div>

</body></html>