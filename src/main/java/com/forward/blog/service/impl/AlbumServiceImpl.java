package com.forward.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forward.blog.mapper.AlbumMapper;
import com.forward.blog.model.Album;
import com.forward.blog.model.KVO;
import com.forward.blog.model.Video;
import com.forward.blog.service.AlbumService;
import com.forward.blog.utils.Page;

@Service
public class AlbumServiceImpl implements AlbumService {
	
	@Autowired
	AlbumMapper albumMapper;

	@Override
	public void insertAlbum(Album album) {
		albumMapper.insertAlbum(album);
	}

	@Override
	public List<Album> selectAlbumListPaging(KVO kvo) {
		
		return albumMapper.selectAlbumListPaging(kvo);
	}

	@Override
	public void deleteAlbumById(Album album) {
		albumMapper.deleteAlbumById(album);
	}

	@Override
	public List<Album> selectAlbumPartList() {
		return albumMapper.selectAlbumPartList();
	}

	@Override
	public Album selectAlbumById(int palbumid) {
		return albumMapper.selectAlbumById(palbumid);
	}

	

	@Override
	public int selectCountAllAlbum(KVO kvo) {
		return albumMapper.selectCountAllAlbum(kvo);
	}

	

	@Override
	public void insertVideo(Video video) {
		albumMapper.insertVideo(video);
	}

	@Override
	public List<Video> selectAllVideoList() {
		return albumMapper.selectAllVideoList();
	}

	@Override
	public void updateSetVideoValbumidByVideoId(Video video) {
		albumMapper.updateSetVideoValbumidByVideoId(video);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Page loadPage(KVO kvo, int currentPage) {
		Page<Album> page = new Page<>();
		kvo.setPageSize(16);
		kvo.setCurrentStrip((currentPage-1)*16);
		page.setTotal(albumMapper.selectCountAllAlbum(kvo));
		page.setRows(albumMapper.selectAlbumListPaging(kvo));
		page.setSize(16);
		page.setPage(currentPage);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Page loadPageVideo(KVO kvo, int currentPage) {
		Page<Video> page = new Page<>();
		kvo.setPageSize(16);
		kvo.setCurrentStrip((currentPage-1)*16);
		page.setTotal(albumMapper.selectCountAllVideo(kvo));
		page.setRows(albumMapper.selectVideoListPaging(kvo));
		page.setSize(16);
		page.setPage(currentPage);
		return page;
	}
}
