package com.cxs.vo.base;

import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class ValidateCodeVO {

    private String key;

    private String code;
}
