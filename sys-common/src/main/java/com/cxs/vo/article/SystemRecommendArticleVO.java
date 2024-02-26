package com.cxs.vo.article;

import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class SystemRecommendArticleVO {

    private Integer articleId;

    private String articleTitle;

    private Integer readCount;

    private String typeName;
}
