package com.cxs.dto;

import com.cxs.valid.annotation.ParamLengthValid;
import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 16:59
 * @Description:
 **/
@Data
public class UserRegirsterDTO {

    @NotBlank(message = "userName岂能为空")
    @ParamLengthValid(max = 16, message = "userName最大16个字符")
    private String userName;

    @NotBlank(message = "email岂能为空")
    private String email;

    @NotBlank(message = "password岂能为空")
    private String password;

    @NotBlank(message = "code为必传项")
    private String code;
}
