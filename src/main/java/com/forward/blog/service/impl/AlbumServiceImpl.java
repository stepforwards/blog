package com.forward.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forward.blog.mapper.AlbumMapper;
import com.forward.blog.model.Album;
import com.forward.blog.model.Paging;
import com.forward.blog.service.AlbumService;

@Service
public class AlbumServiceImpl implements AlbumService {
	
	@Autowired
	AlbumMapper albumMapper;

	@Override
	public void insertAlbum(Album album) {
		albumMapper.insertAlbum(album);
	}

	@Override
	public List<Album> selectAlbumListPaging(Paging paging) {
		int currentPage = paging.getCurrentPage();
		int pageSize = paging.getPageSize();
		int totalPage = albumMapper.selectCountAllAlbum(paging) / pageSize + 1;
		if(paging.getPrevOrNext().equals("prev")){
			currentPage--;
		}else{
			currentPage++;
		}
		paging.setCurrentPage(currentPage < 1 ? 1 : (currentPage > totalPage ? totalPage : currentPage));
		paging.setCurrentTotal((paging.getCurrentPage() - 1) * pageSize);
		return albumMapper.selectAlbumListPaging(paging);
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
}
