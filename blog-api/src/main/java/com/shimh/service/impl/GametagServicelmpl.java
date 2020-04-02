package com.shimh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shimh.entity.Gametag;
import com.shimh.repository.GametagRepository;
import com.shimh.service.GametagService;
import com.shimh.vo.GametagVO;



@Service
public class GametagServicelmpl implements GametagService{

    @Autowired
    private GametagRepository gametagRepository;

    @Override
    public List<Gametag> findAll(){return gametagRepository.findAll();}

    @Override
    public Gametag getTagById(Integer id){return gametagRepository.getOne(id);}

    @Override
    public List<GametagVO> findAllDetail(){return gametagRepository.findAllDetail();}

    @Override
    public GametagVO getGametagDetail(Integer tagId){return gametagRepository.getGameTagDetail(tagId);}
}
