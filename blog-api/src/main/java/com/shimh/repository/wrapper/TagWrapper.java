package com.shimh.repository.wrapper;

import java.util.List;

import com.shimh.vo.TagVO;

public interface TagWrapper {

    List<TagVO> findAllDetail();

    TagVO getTagDetail(Integer tagId);
}
