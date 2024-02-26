package com.cxs.dto.admin.user;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class UpdateUserInfoDTO {

    @NotBlank(message = "userName为必传项")
    private String userName;

    private String avatar;

    private String email;

    private String phone;

    private String autograph;
}
