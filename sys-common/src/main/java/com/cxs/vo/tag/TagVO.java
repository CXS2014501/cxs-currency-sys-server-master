package com.cxs.vo.tag;

import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class TagVO {
    private Integer tagId;

    /**
     * 标签名
     */
    private String tagName;
}
