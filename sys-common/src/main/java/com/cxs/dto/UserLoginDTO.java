package com.cxs.dto;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class UserLoginDTO {

    @NotBlank(message = "用户名岂能为空")
    private String username;
    @NotBlank(message = "用户密码岂能为空")
    private String password;
}
