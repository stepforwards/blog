package com.forward.blog.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.forward.blog.model.Data;
import com.forward.blog.model.User;
import com.forward.blog.service.UserService;

@Controller
@RequestMapping("/admin/user")
public class AdminUserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/login.action",method=RequestMethod.GET)
	public String inLogin(){
		return "/admin/login";
	}
	
	@RequestMapping(value="/login.action",method=RequestMethod.POST)
	public String toLogin(User user,Model m,HttpSession session){
		user.setMD5U_password(user.getUpassword());
		user = userService.userLogin(user);
		if(user != null){
			session.setAttribute("user", user);
			return "redirect:/admin/post/postList.action";
		}
		m.addAttribute("message", "邮箱或密码错误");
		return "/admin/login";
	}
	
	@RequestMapping(value="/exit.action")
	public String toLogout(HttpSession session){
		session.invalidate();
		return "/admin/login";
	}
	
	@RequestMapping(value="/sendEmail.action")
	@ResponseBody
	public Data sendEmail(User user){
		System.out.println(user.getUemail());
		Data data = new Data();
		data.setSuccess(userService.sendEmail(user));
		data.setMessage(data.isSuccess() == true ? "请登录邮箱重新设置密码" : "邮箱不存在");
		return data;
	}
	
	@RequestMapping(value="/resetPassword.action",method=RequestMethod.GET)
	public String inResetPassword(User user,Model m){
		m.addAttribute("user", user);
		return "/admin/resetPassword";
	}
	
	@RequestMapping(value="/resetPassword.action",method=RequestMethod.POST)
	public String toResetPassword(User user,Model m){
		user.setMD5U_password(user.getUpassword());
		if(userService.resetPassword(user)){
			return "/admin/login";
		}
		m.addAttribute("message", "更改密码失败！");
		return "/admin/resetPassword";
	}
	
	@RequestMapping("/about.action")
	public String inAbout(){
		return "/admin/about";
	}
	
	@RequestMapping("/updateUserInfo.action")
	public String updateUserInfo(User user,HttpSession session){
		session.setAttribute("user", userService.updateUserInfo(user));
		return "redirect:/admin/user/about.action";
	}
	
}
