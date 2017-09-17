package com.forward.blog.service;

import java.util.List;

import com.forward.blog.model.Comment;
import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;
import com.forward.blog.utils.Page;

public interface CommentService {

	@SuppressWarnings("rawtypes")
	Page loadPage(KVO kvo, int page);

	List<Comment> selectCommentByPostId(Post post);

	void addComment(Comment comment);

	void deleteCommentById(Comment comment);

	@SuppressWarnings("rawtypes")
	Page liuYanLoadPage(KVO kvo, int page);

}
