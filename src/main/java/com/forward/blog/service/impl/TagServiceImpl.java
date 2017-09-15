package com.forward.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forward.blog.mapper.TagMapper;
import com.forward.blog.model.Tag;
import com.forward.blog.model.Tpcontact;
import com.forward.blog.service.TagService;

@Service
public class TagServiceImpl implements TagService {
	
	@Autowired
	TagMapper tagMapper;
	
	@Override
	public List<Tag> selectTagList() {
		return tagMapper.selectTagList();
	}

	@Override
	public void insertPostTag(Tpcontact tpcontact) {
		tagMapper.insertPostTag(tpcontact);
	}

	@Override
	public void deletePostTagByPostId(int postid) {
		tagMapper.deletePostTagByPostId(postid);
	}

	@Override
	public void deletePostTagByPostIdAndTagid(Tpcontact tpcontact) {
		tagMapper.deletePostTagByPostIdAndTagid(tpcontact);
	}

	@Override
	public void addTag(Tag tag) {
		tagMapper.addTag(tag);
	}

	@Override
	public void updateTagById(Tag tag) {
		tagMapper.updateTagById(tag);
	}

	@Override
	public void deleteTagById(Tag tag) {
		tagMapper.deleteTagById(tag);
	}


}
