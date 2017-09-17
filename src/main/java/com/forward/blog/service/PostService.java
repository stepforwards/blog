package com.forward.blog.service;

import java.util.List;

import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;
import com.forward.blog.utils.Page;

public interface PostService {

	List<Post> selectPostList(KVO kvo);

	int insertPost(Post post);

	void deletePostById(Post post);

	Post selectPostById(Post post);

	void updatePostById(Post post);

	List<Post> selectlatestPost();

	void setFinePostById(Post post);

	List<Post> selectFinePostList();

	List<Post> selectAllPostList();

	void updateSetPostPalbumidByPostId(Post post);

	@SuppressWarnings("rawtypes")
	Page loadPage(KVO kvo, int page);



	
	
}
