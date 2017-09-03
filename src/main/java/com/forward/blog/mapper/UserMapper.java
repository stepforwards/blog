package com.forward.blog.mapper;

import com.forward.blog.model.User;

public interface UserMapper {
	
	User userLogin(User user);

	User checkEmail(User user);

	void updataCaptcha(User user);

	User checkEmailAndCaptcha(User user);

	void updataPassword(User user);

	void resetPassword(User user);

}
