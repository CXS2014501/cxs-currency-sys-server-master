package com.cxs.controller.admin;

import com.cxs.service.admin.AdminBaseService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/15 10:23
 * @Description:
 **/
@RestController
@RequestMapping("/admin/base")
@Api(tags = "管理员公共控制器")
public class AdminBaseController {

    @Autowired
    private AdminBaseService adminBaseService;

}
