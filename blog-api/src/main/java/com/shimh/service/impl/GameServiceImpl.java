package com.shimh.service.impl;

import java.util.Date;
import java.util.List;

import com.shimh.entity.*;
import com.shimh.vo.GameVo;
import com.shimh.vo.PageVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shimh.common.util.UserUtils;

import com.shimh.repository.GameRepository;
import com.shimh.service.GameService;


@Service
public class GameServiceImpl implements GameService {

    @Autowired
    private GameRepository gameRepository;

    @Override
    public List<Game> listGames(PageVo page){
        return gameRepository.listGames(page);
    }

    @Override
    public List<Game> listGames(GameVo game, PageVo page){
        return gameRepository.listGames(game, page);
    }

    @Override
    public List<Game> findAll(){return gameRepository.findAll();}

    @Override
    public Game getGameById(Integer id) {return gameRepository.getOne(id);}

    @Override
    public List<Game> listGamesByTag(Integer id) {
        Gametag t = new Gametag();
        t.setId(id);
        return gameRepository.findByTags(t);
    }

    @Override
    public List<Game> listGamesByCategory(Integer id) {
        Gamecategory c = new Gamecategory();
        c.setId(id);


        return gameRepository.findByCategory(c);
    }


}
