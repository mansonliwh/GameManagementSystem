package com.shimh.repository.wrapper;

import com.shimh.entity.Article;
import com.shimh.entity.Game;
import com.shimh.vo.ArticleVo;
import com.shimh.vo.GameVo;
import com.shimh.vo.PageVo;

import java.util.List;

public interface GameWrapper {
    List<Game> listGames(PageVo page);

    List<Game> listGames(GameVo game, PageVo page);

}

