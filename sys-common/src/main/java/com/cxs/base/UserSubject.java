package com.cxs.base;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserSubject {
    private String id;
    private String username;
    private List<String> authentications;
}
