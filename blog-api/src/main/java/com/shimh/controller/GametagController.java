package com.shimh.controller;

import java.util.List;

import com.shimh.common.annotation.LogAnnotation;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shimh.common.constant.Base;
import com.shimh.common.constant.ResultCode;
import com.shimh.common.result.Result;
import com.shimh.entity.Gametag;
import com.shimh.service.GametagService;
import com.shimh.vo.GamecategoryVO;
import com.shimh.vo.GametagVO;

@RestController
@RequestMapping(value = "/game_tags")
public class GametagController {

    @Autowired
    private GametagService gametagService;

    @GetMapping
    @LogAnnotation(module = "Tag", operation = "obtain all tags")
    public Result listGameTags() {
        List<Gametag> tags = gametagService.findAll();

        return Result.success(tags);
    }

    @GetMapping("detail")
    @LogAnnotation(module = "tags", operation = "obtain all tags")
    public Result listGameCategorysDetail() {
        List<GametagVO> categorys = gametagService.findAllDetail();

        return Result.success(categorys);
    }

//    @GetMapping("/hot")
//    @LogAnnotation(module = "标签", operation = "获取最热标签")
//    public Result listGameHotTags() {
//        int limit = 6;
//        List<GameTag> tags = gametagService.listHotTags(limit);
//
//        return Result.success(tags);
//    }

    @GetMapping("/{id}")
    @LogAnnotation(module = "tag", operation = "fetch tags")
    public Result getGameTagById(@PathVariable("id") Integer id) {

        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        Gametag tag = gametagService.getTagById(id);

        r.setResultCode(ResultCode.SUCCESS);
        r.setData(tag);
        return r;
    }

    @GetMapping("/detail/{id}")
    @LogAnnotation(module = "tags", operation = "fetch tags")
    public Result getGameTagDetail(@PathVariable("id") Integer id) {

        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        GametagVO tag = gametagService.getGametagDetail(id);

        r.setResultCode(ResultCode.SUCCESS);
        r.setData(tag);
        return r;
    }

}
