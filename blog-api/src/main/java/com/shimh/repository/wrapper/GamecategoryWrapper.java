package com.shimh.repository.wrapper;

import java.util.List;

import com.shimh.vo.GamecategoryVO;

public interface GamecategoryWrapper {

    List<GamecategoryVO> findAllDetail();

    GamecategoryVO getGameCategoryDetail(Integer categoryId);

}
