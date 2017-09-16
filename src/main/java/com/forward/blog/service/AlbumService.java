package com.forward.blog.service;

import java.util.List;

import com.forward.blog.model.Album;
import com.forward.blog.model.Paging;

public interface AlbumService {

	void insertAlbum(Album album);

	List<Album> selectAlbumListPaging(Paging paging);

	void deleteAlbumById(Album album);

	List<Album> selectAlbumPartList();

	Album selectAlbumById(int palbumid);

}
