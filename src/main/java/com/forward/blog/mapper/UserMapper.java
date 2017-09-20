package com.forward.blog.mapper;

import com.forward.blog.model.User;

public interface UserMapper {
	
	User userLogin(User user);

	User checkEmail(User user);

	void updateCaptcha(User user);

	User checkEmailAndCaptcha(User user);

	void resetPassword(User user);

	void updateUserInfo(User user);

	User selectUser(User user);

	User checkPassword(User user);

	void updatePassword(User user);

	User selectUserInfo();

}
