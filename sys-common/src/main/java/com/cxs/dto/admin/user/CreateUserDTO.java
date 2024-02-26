package com.cxs.dto.admin.user;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class CreateUserDTO {

    @NotBlank(message = "用户名为必传项")
    private String userName;

    @NotNull(message = "角色列表为必传项")
    private List<Integer> roleIds;
}
