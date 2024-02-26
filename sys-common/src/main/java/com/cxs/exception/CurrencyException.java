package com.cxs.exception;

import com.cxs.enums.CurrencyErrorEnum;
import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class CurrencyException extends RuntimeException{
    private Integer code;
    public CurrencyException() {
        super();
    }

    public CurrencyException(CurrencyErrorEnum errorEnum) {
        super(errorEnum.getMsg());
        this.code = errorEnum.getCode();

    }
}
