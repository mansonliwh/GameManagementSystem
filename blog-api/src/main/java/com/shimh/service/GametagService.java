package com.shimh.service;

import java.util.List;

import com.shimh.entity.Game;
import com.shimh.entity.Gametag;
import com.shimh.vo.GametagVO;

public interface GametagService {
    List<Gametag> findAll();

    Gametag getTagById(Integer id);

//    Integer saveTag(GameTag tag);
//
//    Integer updateTag(GameTag tag);
//
//    void deleteTagById(Integer id);

//    List<GameTag> listHotTags(int limit);

    List<GametagVO> findAllDetail();

    GametagVO getGametagDetail(Integer tagId);


}
