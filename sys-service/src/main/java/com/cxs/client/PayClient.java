package com.cxs.client;

import com.cxs.client.req.PayReq;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
public interface PayClient {
    String pay(PayReq req);
}
