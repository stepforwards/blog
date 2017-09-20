package com.forward.blog.service;

import com.forward.blog.model.User;

public interface UserService {
	
	User userLogin(User user);

	boolean sendEmail(User user);

	boolean resetPassword(User user);

	User updateUserInfo(User user);

}
