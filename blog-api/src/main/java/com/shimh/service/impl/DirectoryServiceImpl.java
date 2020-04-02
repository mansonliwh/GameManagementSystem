package com.shimh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shimh.entity.Directory;
import com.shimh.repository.DirectoryRepository;
import com.shimh.service.DirectoryService;
import com.shimh.vo.DirectoryVO;


@Service
public class DirectoryServiceImpl implements DirectoryService {

    @Autowired
    private DirectoryRepository directoryRepository;


    @Override
    public List<Directory> findAll() {
        return directoryRepository.findAll();
    }

    @Override
    public Directory getDirectoryById(Integer id) {
        return directoryRepository.getOne(id);
    }

    @Override
    @Transactional
    public Integer saveDirectory(Directory directory) {

        return directoryRepository.save(directory).getId();
    }

    @Override
    @Transactional
    public Integer updateDirectory(Directory directory) {
        Directory oldDirectory = directoryRepository.getOne(directory.getId());

        oldDirectory.setDirectoryname(directory.getDirectoryname());

        return oldDirectory.getId();
    }

    @Override
    @Transactional
    public void deleteDirectoryById(Integer id) {
        directoryRepository.delete(id);
    }

    @Override
    public List<DirectoryVO> findAllDetail() {
        return directoryRepository.findAllDetail();
    }

    @Override
    public DirectoryVO getDirectoryDetail(Integer directoryId) {
        return directoryRepository.getDirectoryDetail(directoryId);
    }

}
