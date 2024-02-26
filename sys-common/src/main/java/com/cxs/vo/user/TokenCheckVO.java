package com.cxs.vo.user;

import com.cxs.base.Token;
import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class TokenCheckVO {
    private Boolean status;
    private Token token;
}
