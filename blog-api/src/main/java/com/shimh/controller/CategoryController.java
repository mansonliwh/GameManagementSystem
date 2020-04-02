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
import com.shimh.entity.Category;
import com.shimh.service.CategoryService;
import com.shimh.vo.CategoryVO;

/**
 * arti cateapi
 *
 * @author shimh
 * <p>
 * 2018年1月25日
 */
@RestController
@RequestMapping(value = "/categorys")
public class CategoryController {


    @Autowired
    private CategoryService categoryService;

    @GetMapping
    @LogAnnotation(module = "arti cate", operation = "get arti cate")
    public Result listCategorys() {
        List<Category> categorys = categoryService.findAll();

        return Result.success(categorys);
    }

    @GetMapping("detail")
    @LogAnnotation(module = "arti cate", operation = "get arti cate detail")
    public Result listCategorysDetail() {
        List<CategoryVO> categorys = categoryService.findAllDetail();

        return Result.success(categorys);
    }

    @GetMapping("/{id}")
    @LogAnnotation(module = "arti cate", operation = "get arti cate byid")
    public Result getCategoryById(@PathVariable("id") Integer id) {

        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        Category category = categoryService.getCategoryById(id);

        r.setResultCode(ResultCode.SUCCESS);
        r.setData(category);
        return r;
    }

    @GetMapping("/detail/{id}")
    @LogAnnotation(module = "arti cate", operation = "get arti cate by id")
    public Result getCategoryDetail(@PathVariable("id") Integer id) {

        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        CategoryVO category = categoryService.getCategoryDetail(id);

        r.setResultCode(ResultCode.SUCCESS);
        r.setData(category);
        return r;
    }

    @PostMapping("/create")
    @RequiresRoles(Base.ROLE_ADMIN)
    @LogAnnotation(module = "arti cate", operation = "add arti cate")
    public Result saveCategory(@Validated @RequestBody Category category) {

        Integer categoryId = categoryService.saveCategory(category);

        Result r = Result.success();
        r.simple().put("categoryId", categoryId);
        return r;
    }

    @PostMapping("/update")
    @RequiresRoles(Base.ROLE_ADMIN)
    @LogAnnotation(module = "arti cate", operation = "mod arti cate")
    public Result updateCategory(@RequestBody Category category) {
        Result r = new Result();

        if (null == category.getId()) {
            r.setResultCode(ResultCode.USER_NOT_EXIST);
            return r;
        }

        Integer categoryId = categoryService.updateCategory(category);

        r.setResultCode(ResultCode.SUCCESS);
        r.simple().put("categoryId", categoryId);
        return r;
    }

    @GetMapping("/delete/{id}")
    @RequiresRoles(Base.ROLE_ADMIN)
    @LogAnnotation(module = "arti cate", operation = "del arti cate")
    public Result deleteCategoryById(@PathVariable("id") Integer id) {
        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        categoryService.deleteCategoryById(id);

        r.setResultCode(ResultCode.SUCCESS);
        return r;
    }


}
