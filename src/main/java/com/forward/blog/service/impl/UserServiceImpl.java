package com.forward.blog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forward.blog.mapper.UserMapper;
import com.forward.blog.model.User;
import com.forward.blog.service.UserService;
import com.forward.blog.utils.MailUtil;
import com.forward.blog.utils.MyCaptcha;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public User userLogin(User user) {
		
		return userMapper.userLogin(user);
	}

	@Override
	public boolean sendEmail(User user) {
		if( userMapper.checkEmail(user) != null){
			String captcha = MyCaptcha.createCaptcha();
			user.setUcaptcha(captcha);
			userMapper.updateCaptcha(user);
			String resetPassword = "<a href='http://localhost:8080/blog/front/user/resetPassword.action?uemail="+user.getUemail()+"&ucaptcha="+user.getUcaptcha()+"'>http://localhost:8080/blog/admin/user/resetPassword.action</a>";
			try {
				MailUtil.send(user.getUemail(), "Blog密码找回", "重置密码："+resetPassword);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return true;
		}
		return false;
	}

	@Override
	public boolean resetPassword(User user) {
		if(userMapper.checkEmailAndCaptcha(user) != null){
			userMapper.resetPassword(user);
			return true;
		}
		return false;
	}

	@Override
	public User updateUserInfo(User user) {
		userMapper.updateUserInfo(user);
		return userMapper.selectUser(user);
	}

	@Override
	public User updatePassword(User user) {
		User u = userMapper.checkPassword(user);
		if(u != null){
			user.setMD5U_password(user.getNewUpassword());
			userMapper.updatePassword(user);
		}
		return u;
	}

	@Override
	public User selectUserInfo() {
		return userMapper.selectUserInfo();
	}

}
