package com.shimh.service;

import java.util.List;

import com.shimh.entity.Directory;
import com.shimh.vo.DirectoryVO;


public interface DirectoryService {

    List<Directory> findAll();

    Directory getDirectoryById(Integer id);

    Integer saveDirectory(Directory directory);

    Integer updateDirectory(Directory directory);

    void deleteDirectoryById(Integer id);

    List<DirectoryVO> findAllDetail();

    DirectoryVO getDirectoryDetail(Integer directoryId);

}
