package com.cxs.client;

import com.cxs.client.req.LocationReq;
import com.cxs.client.resp.LocationResp;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
public interface LocationClient {
    LocationResp getAddr(LocationReq req);
}
