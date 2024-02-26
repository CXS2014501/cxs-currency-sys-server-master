package com.cxs.controller;

import com.cxs.base.BaseResult;
import com.cxs.service.TagService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@RestController
@RequestMapping("/tag")
@Api(tags = "标签控制器")
public class TagController {

    @Autowired
    private TagService tagService;

    @GetMapping("/getTagList")
    @ApiOperation("获取标签列表处理器")
    public BaseResult getTagList(){
        BaseResult result = BaseResult.ok();
        tagService.getTagList(result);
        return result;
    }
}
