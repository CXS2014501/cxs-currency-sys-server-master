package com.cxs.dto.article.comment;

import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/2/2 17:05
 * @Description:
 **/
@Data
public class OperaCommentDTO {

    @NotNull(message = "commentId为必传项")
    private Integer commentId;

    /**
     * 精华
     */
    private Boolean commentEssence = Boolean.FALSE;

    /**
     * 置顶
     */
    private Boolean top = Boolean.FALSE;
}
