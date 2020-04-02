package com.shimh.controller;
import java.util.List;

import com.shimh.common.annotation.LogAnnotation;
import com.shimh.entity.*;
import com.shimh.vo.GameVo;
import com.shimh.vo.PageVo;

import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.support.spring.annotation.FastJsonFilter;
import com.alibaba.fastjson.support.spring.annotation.FastJsonView;
import com.shimh.common.constant.Base;
import com.shimh.common.constant.ResultCode;
import com.shimh.common.result.Result;
import com.shimh.service.GameService;
import com.shimh.service.GametagService;

@RestController
@RequestMapping(value = "/games")
public class GameController {

    @Autowired
    private GameService gameService;

    @Autowired
    private  GametagService gametagService;

    @GetMapping
    @FastJsonView(
            exclude = {
                    @FastJsonFilter(clazz = Game.class, props = {"body", "category"}),
                    @FastJsonFilter(clazz = Gametag.class, props = {"id", "avatar"})},
            include = {@FastJsonFilter(clazz = User.class, props = {"nickname"})})
    @LogAnnotation(module = "Game", operation = "obtain all games")
    public Result listGames(GameVo game, PageVo page) {
        System.out.println(game);
        System.out.println(page);
        List<Game> games = gameService.listGames(game, page);
        return Result.success(games);
    }



    @GetMapping("/{id}")
    @FastJsonView(
            exclude = {
//                    @FastJsonFilter(clazz = Game.class, props = {"comments"}),
                    @FastJsonFilter(clazz = GameBody.class, props = {"contentHtml"})})
    @LogAnnotation(module = "game", operation = "fetch game by id")
    public Result getGameById(@PathVariable("id") Integer id) {

        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        Game game = gameService.getGameById(id);

        r.setResultCode(ResultCode.SUCCESS);
        r.setData(game);
        return r;
    }


    @GetMapping("/game_tag/{id}")
    @FastJsonView(
            exclude = {
                    @FastJsonFilter(clazz = Game.class, props = {"body", "category"}),
                    @FastJsonFilter(clazz = Gametag.class, props = {"id", "avatar"})},
            include = {@FastJsonFilter(clazz = User.class, props = {"nickname"})})
    @LogAnnotation(module = "game", operation = "fetch game by tags")
    public Result listGamesByTag(@PathVariable Integer id) {
        List<Game> games = gameService.listGamesByTag(id);

        return Result.success(games);
    }


    @GetMapping("/game_category/{id}")
    @FastJsonView(
            exclude = {
                    @FastJsonFilter(clazz = Game.class, props = {"body", "category"}),
                    @FastJsonFilter(clazz = Gametag.class, props = {"id", "avatar"})},
            include = {@FastJsonFilter(clazz = User.class, props = {"nickname"})})
    @LogAnnotation(module = "game", operation = "fetch game by category")
    public Result listGamesByCategory(@PathVariable Integer id) {
        List<Game> games = gameService.listGamesByCategory(id);

        return Result.success(games);
    }



}
