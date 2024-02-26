package com.cxs.dto.admin.menu;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Set;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/18 16:43
 * @Description:
 **/
@Data
public class AuthMenuToRoleDTO {

    @NotNull(message = "用户id为必传项")
    private Integer roleId;

    @NotNull(message = "菜单id集合为必传项")
    private Set<Integer> menuIds;
}
