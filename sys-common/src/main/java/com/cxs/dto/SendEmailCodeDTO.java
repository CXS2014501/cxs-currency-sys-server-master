package com.cxs.dto;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 17:03
 * @Description:
 **/
@Data
public class SendEmailCodeDTO {

    @NotBlank(message = "email岂能为空")
    private String email;
}
