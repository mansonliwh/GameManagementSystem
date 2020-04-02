package com.shimh.repository.wrapper;

import java.util.List;

import com.shimh.vo.CategoryVO;


public interface CategoryWrapper {

    List<CategoryVO> findAllDetail();

    CategoryVO getCategoryDetail(Integer categoryId);
}
