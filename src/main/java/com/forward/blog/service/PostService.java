package com.forward.blog.service;

import java.util.List;

import com.forward.blog.model.Post;

public interface PostService {

	List<Post> selectPostList();

	int insertPost(Post post);

	void deletePostById(Post post);

	Post selectPostById(Post post);

	void updatePostById(Post post);
	
	
}
