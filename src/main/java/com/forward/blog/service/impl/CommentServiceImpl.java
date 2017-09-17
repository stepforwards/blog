package com.forward.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forward.blog.mapper.CommentMapper;
import com.forward.blog.model.Comment;
import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;
import com.forward.blog.service.CommentService;
import com.forward.blog.utils.Page;

@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	CommentMapper commentMapper;
	
	@SuppressWarnings("rawtypes")
	@Override
	public Page loadPage(KVO kvo, int currentPage) {
		Page<Comment> page = new Page<>();
		kvo.setPageSize(16);
		kvo.setCurrentStrip((currentPage-1)*16);
		page.setTotal(commentMapper.selectCountAllComment(kvo));
		page.setRows(commentMapper.selectCommentListPaging(kvo));
		page.setSize(16);
		page.setPage(currentPage);
		return page;
	}

	@Override
	public List<Comment> selectCommentByPostId(Post post) {
		return commentMapper.selectCommentByPostId(post);
	}

	@Override
	public void addComment(Comment comment) {
		commentMapper.addComment(comment);
	}

	@Override
	public void deleteCommentById(Comment comment) {
		commentMapper.deleteCommentById(comment);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Page liuYanLoadPage(KVO kvo, int currentPage) {
		Page<Comment> page = new Page<>();
		kvo.setPageSize(16);
		kvo.setCurrentStrip((currentPage-1)*16);
		page.setTotal(commentMapper.selectCountAllCommentOfCopostidIsNull(kvo));
		page.setRows(commentMapper.selectCommentListOfCopostidIsNullPaging(kvo));
		page.setSize(16);
		page.setPage(currentPage);
		return page;
	}
	
}
