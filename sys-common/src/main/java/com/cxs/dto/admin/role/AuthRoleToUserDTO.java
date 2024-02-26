package com.cxs.dto.admin.role;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Set;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/18 9:39
 * @Description:
 **/
@Data
public class AuthRoleToUserDTO {

    @NotBlank(message = "用户id为必传项")
    private String userId;

    @NotNull(message = "角色id集合为必传项")
    private Set<Integer> roleIds;
}
