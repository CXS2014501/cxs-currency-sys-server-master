package com.cxs.base;

import com.alibaba.fastjson.JSONObject;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/*
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BasePageBean<T> implements Serializable {
    private String keyword;
    private JSONObject other;
    private Long total;
    private Long pageNum;
    private Long pageSize;
    private Long pages;
    private T data;
}
