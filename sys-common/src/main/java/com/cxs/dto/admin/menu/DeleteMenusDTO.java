package com.cxs.dto.admin.menu;

import lombok.Data;

import java.util.List;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/17 16:05
 * @Description:
 **/
@Data
public class DeleteMenusDTO {
    private List<Integer> menuIds;
}
