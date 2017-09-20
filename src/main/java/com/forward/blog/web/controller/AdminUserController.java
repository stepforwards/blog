package com.forward.blog.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.forward.blog.model.User;
import com.forward.blog.service.UserService;

@Controller
@RequestMapping("/admin/user")
public class AdminUserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/exit.action")
	public String toLogout(HttpSession session){
		session.invalidate();
		return "/admin/login";
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
	
	@RequestMapping(value="/updatePassword.action",method=RequestMethod.GET)
	public String inUpdatePassword(){
		return "/admin/updatePassword";
	}
	
	@RequestMapping(value="/updatePassword.action",method=RequestMethod.POST)
	public String doUpdatePassword(User user,Model m){
		user.setMD5U_password(user.getOldUpassword());
		if(userService.updatePassword(user) != null){
			return "redirect:/admin/user/login.action";
		}
		return "redirect:/admin/user/updatePassword.action";
	}
	
}
