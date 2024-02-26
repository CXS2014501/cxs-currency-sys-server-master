package com.cxs.dto.admin.user;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class UpdateUserPwdDTO {
    @NotBlank(message = "旧密码为必传项")
    private String oldPwd;
    @NotBlank(message = "新密码为必传项")
    private String newPwd;
}
