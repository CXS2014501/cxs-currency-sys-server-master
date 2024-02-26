package com.cxs.dto.article.comment;

import com.cxs.base.BaseRequest;
import lombok.Data;

import javax.validation.constraints.NotNull;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class GetArticleCommentListDTO extends BaseRequest {

    @NotNull(message = "articleId为必传项")
    private Integer articleId;
}
