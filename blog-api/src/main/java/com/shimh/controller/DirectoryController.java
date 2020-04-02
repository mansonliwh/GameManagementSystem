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
import com.shimh.entity.Directory;
import com.shimh.service.DirectoryService;
import com.shimh.vo.DirectoryVO;

/**
 * folderapi
 *
 * @author shimh
 * <p>
 * 2018年1月25日
 */
@RestController
@RequestMapping(value = "/directorys")
public class DirectoryController {


    @Autowired
    private DirectoryService directoryService;

    @GetMapping
    @LogAnnotation(module = "folder", operation = "get all folder")
    public Result listDirectorys() {
        List<Directory> directorys = directoryService.findAll();

        return Result.success(directorys);
    }

    @GetMapping("detail")
    @LogAnnotation(module = "folder", operation = "get folder detail")
    public Result listDirectorysDetail() {
        List<DirectoryVO> directorys = directoryService.findAllDetail();

        return Result.success(directorys);
    }

    @GetMapping("/{id}")
    @LogAnnotation(module = "folder", operation = "get folder byid")
    public Result getDirectoryById(@PathVariable("id") Integer id) {

        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        Directory directory = directoryService.getDirectoryById(id);

        r.setResultCode(ResultCode.SUCCESS);
        r.setData(directory);
        return r;
    }

    @GetMapping("/detail/{id}")
    @LogAnnotation(module = "folder", operation = "get folder byid")
    public Result getDirectoryDetail(@PathVariable("id") Integer id) {

        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        DirectoryVO directory = directoryService.getDirectoryDetail(id);

        r.setResultCode(ResultCode.SUCCESS);
        r.setData(directory);
        return r;
    }

    @PostMapping("/create")
    @RequiresRoles(Base.ROLE_ADMIN)
    @LogAnnotation(module = "folder", operation = "add folder")
    public Result saveDirectory(@Validated @RequestBody Directory directory) {

        Integer directoryId = directoryService.saveDirectory(directory);

        Result r = Result.success();
        r.simple().put("directoryId", directoryId);
        return r;
    }

    @PostMapping("/update")
    @RequiresRoles(Base.ROLE_ADMIN)
    @LogAnnotation(module = "folder", operation = "mod folder")
    public Result updateDirectory(@RequestBody Directory directory) {
        Result r = new Result();

        if (null == directory.getId()) {
            r.setResultCode(ResultCode.USER_NOT_EXIST);
            return r;
        }

        Integer directoryId = directoryService.updateDirectory(directory);

        r.setResultCode(ResultCode.SUCCESS);
        r.simple().put("directoryId", directoryId);
        return r;
    }

    @GetMapping("/delete/{id}")
    @RequiresRoles(Base.ROLE_ADMIN)
    @LogAnnotation(module = "folder", operation = "del folder")
    public Result deleteDirectoryById(@PathVariable("id") Integer id) {
        Result r = new Result();

        if (null == id) {
            r.setResultCode(ResultCode.PARAM_IS_BLANK);
            return r;
        }

        directoryService.deleteDirectoryById(id);

        r.setResultCode(ResultCode.SUCCESS);
        return r;
    }


}
