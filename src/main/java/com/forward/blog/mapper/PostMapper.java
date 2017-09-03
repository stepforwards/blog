package com.forward.blog.mapper;

import java.util.List;

import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;

public interface PostMapper {

	List<Post> selectPostList(KVO kvo);

	void insertPost(Post post);

	int selectNewPostId();

	void deletePostById(Post post);

	Post selectPostById(Post post);

	void updatePostById(Post post);

	List<Post> selectlatestPost();

}
