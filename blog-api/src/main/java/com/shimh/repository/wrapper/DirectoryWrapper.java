package com.shimh.repository.wrapper;

import java.util.List;

import com.shimh.vo.DirectoryVO;


public interface DirectoryWrapper {

    List<DirectoryVO> findAllDetail();

    DirectoryVO getDirectoryDetail(Integer directoryId);
}
