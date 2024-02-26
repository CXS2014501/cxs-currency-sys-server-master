package com.cxs.dto.profile;

import lombok.Data;

import javax.validation.constraints.NotNull;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class UserReceiveEmailNoticeSettingDTO {

    @NotNull(message = "receiveEmailNotice为必传项")
    private Boolean receiveEmailNotice;
}
