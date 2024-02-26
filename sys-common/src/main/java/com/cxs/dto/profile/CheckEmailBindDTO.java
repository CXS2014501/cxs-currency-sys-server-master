package com.cxs.dto.profile;

import com.cxs.valid.annotation.ParamLengthValid;
import lombok.Data;

import javax.validation.constraints.NotBlank;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class CheckEmailBindDTO {

    @NotBlank(message = "邮箱为必传项")
    private String email;
}
