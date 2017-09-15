package com.forward.blog.service;

import java.util.List;

import com.forward.blog.model.Tag;
import com.forward.blog.model.Tpcontact;

public interface TagService {

	List<Tag> selectTagList();

	void insertPostTag(Tpcontact tpcontact);

	void deletePostTagByPostId(int postid);

	void deletePostTagByPostIdAndTagid(Tpcontact tpcontact);

	void addTag(Tag tag);

	void updateTagById(Tag tag);

	void deleteTagById(Tag tag);


}
