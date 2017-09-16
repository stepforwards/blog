package com.forward.blog.mapper;

import java.util.List;

import com.forward.blog.model.Album;
import com.forward.blog.model.KVO;
import com.forward.blog.model.Video;

public interface AlbumMapper {

	void insertAlbum(Album album);

	List<Album> selectAlbumListPaging(KVO kvo);

	void deleteAlbumById(Album album);

	int selectCountAllAlbum(KVO kvo);

	List<Album> selectAlbumPartList();

	Album selectAlbumById(int palbumid);

	List<Video> selectVideoListPaging(KVO kvo);

	int selectCountAllVideo(KVO kvo);

	void insertVideo(Video video);

	List<Video> selectAllVideoList();

	void updateSetVideoValbumidByVideoId(Video video);

}
