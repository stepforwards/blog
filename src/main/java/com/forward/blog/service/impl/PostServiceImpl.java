package com.forward.blog.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forward.blog.mapper.PostMapper;
import com.forward.blog.model.Post;
import com.forward.blog.service.PostService;

@Service
public class PostServiceImpl implements PostService {
	
	@Autowired
	PostMapper postMapper;
	
	@Override
	public List<Post> selectPostList() {
		 
		return postMapper.selectPostList();
	}

	@Override
	public int insertPost(Post post) {
		post.setPinserttime(new Date(System.currentTimeMillis()));
		postMapper.insertPost(post);
		return postMapper.selectNewPostId();
	}

	@Override
	public void deletePostById(Post post) {
		postMapper.deletePostById(post);
		
	}

	@Override
	public Post selectPostById(Post post) {
		return postMapper.selectPostById(post);
	}

	@Override
	public void updatePostById(Post post) {
		post.setPupdatatime(new Date(System.currentTimeMillis()));
		postMapper.updatePostById(post);
		
	}

}
