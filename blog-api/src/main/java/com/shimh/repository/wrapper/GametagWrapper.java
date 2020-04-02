package com.shimh.repository.wrapper;

import java.util.List;

import com.shimh.vo.GametagVO;

public interface GametagWrapper {

    List<GametagVO> findAllDetail();

    GametagVO getGameTagDetail(Integer tagId);
}
