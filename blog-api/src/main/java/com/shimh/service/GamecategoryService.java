package com.shimh.service;

import java.util.List;

import com.shimh.entity.Gamecategory;
import com.shimh.vo.GamecategoryVO;




public interface GamecategoryService {

    List<Gamecategory> findAll();

    Gamecategory getGamecategoryById(Integer id);

    Integer saveGamecategory(Gamecategory category);

    Integer updateGamecategory(Gamecategory category);

    void deleteGamecategoryById(Integer id);

    List<GamecategoryVO> findAllDetail();

    GamecategoryVO getGamecategoryDetail(Integer categoryId);


}
