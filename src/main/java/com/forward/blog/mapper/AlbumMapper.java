package com.forward.blog.mapper;

import java.util.List;

import com.forward.blog.model.Album;
import com.forward.blog.model.Paging;

public interface AlbumMapper {

	void insertAlbum(Album album);

	List<Album> selectAlbumListPaging(Paging paging);

	void deleteAlbumById(Album album);

	int selectCountAllAlbum(Paging paging);

	List<Album> selectAlbumPartList();

	Album selectAlbumById(int palbumid);

}
