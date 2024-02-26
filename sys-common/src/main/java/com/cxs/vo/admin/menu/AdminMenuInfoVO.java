package com.cxs.vo.admin.menu;

import lombok.Data;

import java.util.List;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/17 12:11
 * @Description:
 **/
@Data
public class AdminMenuInfoVO {
    private List<AdminMenuVO> permissions;
}
