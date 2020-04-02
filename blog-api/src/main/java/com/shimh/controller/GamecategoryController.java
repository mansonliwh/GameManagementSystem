package com.shimh.controller;

import java.util.List;

import com.shimh.common.annotation.LogAnnotation;
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

import com.shimh.common.constant.Base;
import com.shimh.common.constant.ResultCode;
import com.shimh.common.result.Result;
import com.shimh.entity.Gamecategory;
import com.shimh.service.GamecategoryService;
import com.shimh.vo.GamecategoryVO;







@RestController
@RequestMapping(value = "/game_categories")
public class GamecategoryController {
    @Autowired
    private GamecategoryService gamecategoryService;

    @GetMapping
    @LogAnnotation(module = "game cate", operation = "obtain all categories")
    public Result listGameCategorys() {
        List<Gamecategory> gamecategorys = gamecategoryService.findAll();

        return Result.success(gamecategorys);
    }

    @GetMapping("detail")
    @LogAnnotation(module = "game cate", operation = "obtain all categories")
    public Result listGameCategoryDetail() {
        List<GamecategoryVO> gamecategory = gamecategoryService.findAllDetail();

        return Result.success(gamecategory);
    }

    @GetMapping("/{id}")
    @LogAnnotation(module = "game cate", operation = "fetch categories by id")
    public Result getGameCategoryById(@PathVariable("id") Integer id) {

        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        Gamecategory gamecategory = gamecategoryService.getGamecategoryDetail(id);

        r.setResultCode(ResultCode.SUCCESS);
        r.setData(gamecategory);
        return r;
    }

    @GetMapping("/detail/{id}")
    @LogAnnotation(module = "game cate", operation = "fetch categories")
    public Result getGameCategoryDetail(@PathVariable("id") Integer id) {

        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        GamecategoryVO category = gamecategoryService.getGamecategoryDetail(id);

        r.setResultCode(ResultCode.SUCCESS);
        r.setData(category);
        return r;
    }


}
