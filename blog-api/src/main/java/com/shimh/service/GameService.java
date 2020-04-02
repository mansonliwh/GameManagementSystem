package com.shimh.service;

import java.util.List;

import com.shimh.entity.Article;
import com.shimh.entity.Game;
import com.shimh.entity.Gametag;
import com.shimh.vo.GameVo;
import com.shimh.vo.PageVo;

public interface GameService {

    List<Game> listGames(PageVo page);

    List<Game> listGames(GameVo game, PageVo page);

    List<Game> findAll();

    Game getGameById(Integer id);

    List<Game> listGamesByTag(Integer id);

    List<Game> listGamesByCategory(Integer id);

//    Game getGameAndAddViews(Integer id);
//
//    List<Game> listHotGames(int limit);
//
//    List<Game> listNewGames(int limit);


}
