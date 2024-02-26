package com.cxs.dto.article;

import com.cxs.base.BaseRequest;
import lombok.Data;

import java.util.List;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class GetArticleListDTO extends BaseRequest {
    private String keyword;
    private List<Integer> tags;
    private Integer typeId;
    private Integer tagId;
}
