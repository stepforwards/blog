package com.forward.blog.mapper;

import java.util.List;

import com.forward.blog.model.Comment;
import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;

public interface CommentMapper {

	int selectCountAllComment(KVO kvo);

	List<Comment> selectCommentListPaging(KVO kvo);

	List<Comment> selectCommentByPostId(Post post);

	void addComment(Comment comment);

	void deleteCommentById(Comment comment);

	int selectCountAllCommentOfCopostidIsNull(KVO kvo);

	List<Comment> selectCommentListOfCopostidIsNullPaging(KVO kvo);

}
