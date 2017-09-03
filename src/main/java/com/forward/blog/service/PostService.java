package com.forward.blog.service;

import java.util.List;

import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;

public interface PostService {

	List<Post> selectPostList(KVO kvo);

	int insertPost(Post post);

	void deletePostById(Post post);

	Post selectPostById(Post post);

	void updatePostById(Post post);

	List<Post> selectlatestPost();

	
	
}
