package com.cxs.base;

import lombok.Data;

import java.io.Serializable;

/*
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class BaseRequest implements Serializable {

    private Integer pageNum = 1;

    private Integer pageSize = 10;
}
