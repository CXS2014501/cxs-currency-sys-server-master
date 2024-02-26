package com.cxs.dto.admin.role;

import lombok.Data;

import java.util.List;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/17 15:18
 * @Description:
 **/
@Data
public class DeleteRolesDTO {
    private List<Integer> ids;
}
