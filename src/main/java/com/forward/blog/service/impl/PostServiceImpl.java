package com.forward.blog.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forward.blog.mapper.PostMapper;
import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;
import com.forward.blog.service.PostService;
import com.forward.blog.utils.Page;

@Service
public class PostServiceImpl implements PostService {
	
	@Autowired
	PostMapper postMapper;
	
	@Override
	public List<Post> selectPostList(KVO kvo) {
		return postMapper.selectPostList(kvo);
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

	@Override
	public List<Post> selectlatestPost() {
		return postMapper.selectlatestPost();
	}

	@Override
	public void setFinePostById(Post post) {
		if(post.getPfine().equals("true")){
			post.setPfine("checked");
		}else{
			post.setPfine("");
		}
		postMapper.setFinePostById(post);
		
	}

	@Override
	public List<Post> selectFinePostList() {
		return postMapper.selectFinePostList();
	}

	@Override
	public List<Post> selectAllPostList() {
		return postMapper.selectAllPostList();
	}

	@Override
	public void updateSetPostPalbumidByPostId(Post post) {
		postMapper.setPostPalbumidByPostId(post);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Page loadPage(KVO kvo, int currentPage) {
		List<Post> postList = postMapper.selectPostList(kvo);
		Page<Post> page = new Page<>();
		kvo.setPageSize(10);
		kvo.setCurrentStrip((currentPage-1)*10);
		page.setTotal(postList.size());
		page.setRows(postList.subList(kvo.getCurrentStrip(), kvo.getPageSize() > postList.size() ? postList.size() : kvo.getPageSize() ));
		page.setSize(10);
		page.setPage(currentPage);
		return page;
	}

}
