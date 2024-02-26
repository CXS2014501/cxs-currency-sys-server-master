package com.cxs.base;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.Date;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class Token {
    private UserSubject user;

    private String token;

    @JSONField(serialize = false, format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime issuedAtTime;

    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime expirationTime;
}
