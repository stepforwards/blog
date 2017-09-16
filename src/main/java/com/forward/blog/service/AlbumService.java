package com.forward.blog.service;

import java.util.List;

import com.forward.blog.model.Album;
import com.forward.blog.model.KVO;
import com.forward.blog.model.Video;
import com.forward.blog.utils.Page;

public interface AlbumService {

	void insertAlbum(Album album);

	List<Album> selectAlbumListPaging(KVO kvo);

	void deleteAlbumById(Album album);

	List<Album> selectAlbumPartList();

	Album selectAlbumById(int palbumid);

	int selectCountAllAlbum(KVO kvo);

	void insertVideo(Video video);

	List<Video> selectAllVideoList();

	void updateSetVideoValbumidByVideoId(Video video);

	@SuppressWarnings("rawtypes")
	Page loadPage(KVO kvo, int page);

	@SuppressWarnings("rawtypes")
	Page loadPageVideo(KVO kvo, int page);

}
