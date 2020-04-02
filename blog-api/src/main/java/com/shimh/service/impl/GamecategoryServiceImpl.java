package com.shimh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shimh.entity.Gamecategory;
import com.shimh.repository.GamecategoryRepository;
import com.shimh.service.GamecategoryService;
import com.shimh.vo.GamecategoryVO;


@Service
public class GamecategoryServiceImpl implements GamecategoryService{

    @Autowired
    private GamecategoryRepository gamecategoryRepository;


    @Override
    public List<Gamecategory> findAll() {
        return gamecategoryRepository.findAll();
    }

    @Override
    public Gamecategory getGamecategoryById(Integer id) {
        return gamecategoryRepository.getOne(id);
    }

    @Override
    @Transactional
    public Integer saveGamecategory(Gamecategory category) {

        return gamecategoryRepository.save(category).getId();
    }

    @Override
    @Transactional
    public Integer updateGamecategory(Gamecategory category) {
        Gamecategory oldCategory = gamecategoryRepository.getOne(category.getId());

        oldCategory.setCategoryName(category.getCategoryName());
        oldCategory.setAvatar(category.getAvatar());

        return oldCategory.getId();
    }

    @Override
    @Transactional
    public void deleteGamecategoryById(Integer id) {
        gamecategoryRepository.delete(id);
    }

    @Override
    public List<GamecategoryVO> findAllDetail() {
        return gamecategoryRepository.findAllDetail();
    }

    @Override
    public GamecategoryVO getGamecategoryDetail(Integer categoryId) {
        return gamecategoryRepository.getGameCategoryDetail(categoryId);
    }

}
